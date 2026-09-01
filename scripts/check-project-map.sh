#!/usr/bin/env bash
# Verify that the project documentation stays in sync with the repositories
# in the organization:
#
#   * every active, original repository is linked in each checked file, and
#   * every organization repository link in each checked file points at a
#     repository that exists and is not archived (no stale links to archived,
#     renamed, or removed repositories).
#
# Forks, mirrors (which are forks), archived repositories, and this repository
# are exempt from the coverage check. Forks are valid link targets, because
# integration forks (kernel, UCM, firmware) are deliberate parts of the
# project map.
set -euo pipefail

ORG="${ORG:-Yoga-Book}"
if [ "$#" -gt 0 ]; then
  files=("$@")
else
  files=(profile/README.md CONTRIBUTING.md)
fi

headers=()
if [ -n "${GITHUB_TOKEN:-}" ]; then
  headers+=(-H "Authorization: Bearer $GITHUB_TOKEN")
fi
headers+=(-H "Accept: application/vnd.github+json")

# Fetch every repository in the organization, following pagination.
listing=$(mktemp)
trap 'rm -f "$listing"' EXIT
page=1
while :; do
  batch=$(curl -fsSL "${headers[@]+"${headers[@]}"}" \
    "https://api.github.com/orgs/$ORG/repos?per_page=100&page=$page" |
    jq -r '.[] | [.name, (.fork | tostring), (.archived | tostring)] | @tsv')
  if [ -z "$batch" ]; then
    break
  fi
  printf '%s\n' "$batch" >>"$listing"
  page=$((page + 1))
done

if [ ! -s "$listing" ]; then
  echo "error: no repositories returned for org $ORG" >&2
  exit 1
fi

active=$(awk -F'\t' \
  '$2 == "false" && $3 == "false" && tolower($1) != ".github" { print $1 }' \
  "$listing")
linkable=$(awk -F'\t' '$3 == "false" { print tolower($1) }' "$listing")
all=$(awk -F'\t' '{ print tolower($1) }' "$listing")

errors=0

# Every active repository must be linked in every checked file.
if [ -n "$active" ]; then
  while IFS= read -r repo; do
    for file in "${files[@]}"; do
      if ! grep -qiF "github.com/$ORG/$repo" "$file"; then
        echo "missing from $file: $repo"
        errors=1
      fi
    done
  done <<<"$active"
fi

# Every organization link must point at an active repository.
org_re=$(printf '%s\n' "$ORG" | sed 's/[][\\.^$*]/\\&/g')
for file in "${files[@]}"; do
  links=$(grep -oiE "github\.com/$org_re/[A-Za-z0-9._-]+" "$file" |
    cut -d'/' -f3 | sed 's/\.*$//' | sort -uf) || true
  while IFS= read -r name; do
    if [ -z "$name" ]; then
      continue
    fi
    if printf '%s\n' "$linkable" | grep -qiFx "$name"; then
      continue
    fi
    if printf '%s\n' "$all" | grep -qiFx "$name"; then
      echo "stale link in $file: $name (archived repository)"
    else
      echo "stale link in $file: $name (repository not found in $ORG)"
    fi
    errors=1
  done <<<"$links"
done

if [ "$errors" -ne 0 ]; then
  echo "error: update the project map and documentation links (see above)" >&2
  exit 1
fi

echo "Project map is in sync with $ORG."
