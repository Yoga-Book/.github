# Yoga-Book organization repository

This is the special `.github` repository of the
[Yoga-Book](https://github.com/Yoga-Book) organization. It holds the
organization profile and the default community files that apply to every
repository in the organization unless a repository provides its own.

## Organization profile

[`profile/README.md`](profile/README.md) is the page shown at
[github.com/Yoga-Book](https://github.com/Yoga-Book). It introduces the
project, maps each component to its repository, and links the main entry
points.

## Organization-wide defaults

GitHub uses these files for any repository in the organization that does not
have its own file of the same type:

| File | Purpose |
| --- | --- |
| [`CODE_OF_CONDUCT.md`](CODE_OF_CONDUCT.md) | Community standards (Contributor Covenant 2.1) |
| [`CONTRIBUTING.md`](CONTRIBUTING.md) | How to find the right repository and report evidence |
| [`SECURITY.md`](SECURITY.md) | How to report vulnerabilities privately |
| [`SUPPORT.md`](SUPPORT.md) | Where and how to get help |
| [`.github/ISSUE_TEMPLATE/`](.github/ISSUE_TEMPLATE/) | Hardware report and bug report issue forms |
| [`.github/PULL_REQUEST_TEMPLATE.md`](.github/PULL_REQUEST_TEMPLATE.md) | Pull request template with evidence checklist |

A repository overrides any default by adding its own file. Within a
repository, GitHub looks in the `.github/` folder first, then the repository
root, then `docs/`.

Notes:

- If an issue template sets labels, those labels must exist in this
  repository and in every repository where the template is used, so the
  default templates set none.
- Licenses cannot be organization-wide defaults. The
  [`LICENSE`](LICENSE) here (CC-BY-4.0) covers only this repository's
  documentation and artwork; component repositories carry their own licenses.
- Dependabot configuration is per repository. The
  [`.github/dependabot.yml`](.github/dependabot.yml) here covers only this
  repository; component repositories need their own.

## Checks

Workflows in [`.github/workflows/`](.github/workflows/) protect this
repository:

- **Link check** — validates every URL in the Markdown documentation with
  [lychee](https://github.com/lycheeverse/lychee) on push, on pull requests,
  and weekly, and opens an issue if a scheduled run fails.
- **Project map sync** — queries the organization's repositories and fails if
  an active, original repository is missing from the profile's project map or
  the contribution guide, or if a link points at a stale repository
  ([`scripts/check-project-map.sh`](scripts/check-project-map.sh)).
- **Lint** — validates workflows with
  [actionlint](https://github.com/rhysd/actionlint), shell scripts with
  [ShellCheck](https://www.shellcheck.net/), and Markdown with
  [markdownlint](https://github.com/DavidAnson/markdownlint).

## Contributing

See [`CONTRIBUTING.md`](CONTRIBUTING.md). Changes to the profile README
should keep the project map complete and the links valid; both are enforced
by the workflows above.
