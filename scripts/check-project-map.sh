#!/usr/bin/env bash
# Verify that every active, original Yoga-Book repository is linked in the
# organization profile README. Forks, mirrors (which are forks), archived
# repositories, and this repository are exempt.
set -euo pipefail

ORG="${ORG:-Yoga-Book}"
README="${1:-profile/README.md}"

headers=()
if [ -n "${GITHUB_TOKEN:-}" ]; then
  headers+=(-H "Authorization: Bearer $GITHUB_TOKEN")
fi
headers+=(-H "Accept: application/vnd.github+json")

repos=$(curl -fsSL "${headers[@]+"${headers[@]}"}" \
  "https://api.github.com/orgs/$ORG/repos?per_page=100" |
  jq -r '.[] | select(.fork == false and .archived == false and .name != ".github") | .name')

if [ -z "$repos" ]; then
  echo "error: no repositories returned for org $ORG" >&2
  exit 1
fi

missing=0
while IFS= read -r repo; do
  if ! grep -qF "github.com/$ORG/$repo" "$README"; then
    echo "missing from $README: $repo"
    missing=1
  fi
done <<<"$repos"

if [ "$missing" -ne 0 ]; then
  echo "error: add the repositories above to the project map in $README" >&2
  exit 1
fi

echo "All active repositories are linked in $README."
