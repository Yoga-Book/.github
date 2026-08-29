# Security Policy

This is a volunteer-run hardware enablement project. We take security reports
seriously and will work with reporters to understand and address valid issues.

## Scope

This policy covers the Yoga-Book organization's device-specific software:
kernel enablement branches, userspace components, packaging, installer
workflows, and validation tooling. It does not cover upstream projects we fork
or mirror (kernel, GNOME, SOF), which have their own security processes, or
vulnerabilities in the underlying distribution.

## Reporting a vulnerability

Please do **not** open a public issue for a security vulnerability.

1. Prefer GitHub's private vulnerability reporting on the affected repository:
   open the repository's **Security** tab and select **Report a vulnerability**.
2. If private reporting is not enabled on that repository, contact an owner of
   the Yoga-Book organization through a private channel.
3. If you are unsure which repository is affected, report privately against
   [Yoga-Book-Validator](https://github.com/Yoga-Book/Yoga-Book-Validator).

Please include:

- the repository and component affected;
- a description of the issue and its potential impact;
- reproduction steps or a proof of concept where possible; and
- how the issue was found (review, testing, on-device observation).

Do not include credentials, serial numbers, or private firmware in your report
unless specifically asked and a safe way to share them is arranged.

## Response

- Reports are acknowledged on a best-effort basis, typically within a few days.
- We will investigate and keep you informed of progress.
- Valid issues are fixed in the repository that owns the component;
  contributors are credited in advisories unless they prefer to stay anonymous.
- There is no bug bounty program.

## Coordinated disclosure

We prefer coordinated disclosure. Please give us a reasonable opportunity to
address an issue before publishing details, and we will do the same for
upstream issues that require fixes in other projects first.
