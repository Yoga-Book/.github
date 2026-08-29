# Contributing to Yoga Book Linux

Thank you for helping make Linux work better on the original Intel-based
Lenovo Yoga Book. This file is the organization-wide default; individual
repositories may add more specific guidance, which takes precedence over this
file.

## Find the right repository

Each component lives in an explicitly scoped repository. Start with the
[organization profile](https://github.com/Yoga-Book) for the project map, and
open issues and pull requests in the repository that owns the affected
component:

- Kernel enablement →
  [Yoga-Book-Linux-Kernel](https://github.com/Yoga-Book/Yoga-Book-Linux-Kernel)
- Installer images and package integration →
  [Ubuntu-Autoinstall](https://github.com/Yoga-Book/Ubuntu-Autoinstall)
- System and hardware checks →
  [Yoga-Book-Validator](https://github.com/Yoga-Book/Yoga-Book-Validator)
- Halo keyboard, touchpad, and haptics →
  [Halo-Keyboard](https://github.com/Yoga-Book/Halo-Keyboard)
- Sensors and thermal policy →
  [Yoga-Book-Sensors](https://github.com/Yoga-Book/Yoga-Book-Sensors)
- GNSS receiver integration →
  [Yoga-Book-GNSS](https://github.com/Yoga-Book/Yoga-Book-GNSS)
- Camera userspace integration →
  [Yoga-Book-Camera](https://github.com/Yoga-Book/Yoga-Book-Camera)
- ALSA UCM configuration →
  [Yoga-Book-ALSA-UCM-Config](https://github.com/Yoga-Book/Yoga-Book-ALSA-UCM-Config)
- Sound Open Firmware integration →
  [Yoga-Book-Sound-Open-Firmware](https://github.com/Yoga-Book/Yoga-Book-Sound-Open-Firmware)

For system-wide behavior, or if you are unsure which component is involved,
begin with
[Yoga-Book-Validator](https://github.com/Yoga-Book/Yoga-Book-Validator).

## Before you contribute

1. Search the repository's existing issues for related reports.
2. Read that repository's README and any status or requirements documentation.
3. Follow the repository's local contribution guidance if it has any.

## Evidence discipline

This project separates kinds of evidence. State clearly where your result came
from:

- **Automation / CI** — a build or test that ran without the tablet.
- **Virtual machine** — a check run in a VM or emulator.
- **Physical tablet** — a result observed on real Yoga Book hardware.

A successful build or automated test is not proof that hardware works on the
tablet. Label results accordingly and do not upgrade evidence you did not
collect.

## Hardware reports

Use the hardware report issue template where available. Include:

- the exact Yoga Book model and firmware version;
- the distribution and running kernel version;
- reproduction steps and expected versus observed behavior;
- relevant logs or a Yoga Book Validator report; and
- whether the result came from automation, a virtual machine, or the physical
  tablet.

Never publish credentials, serial numbers, private firmware, or other sensitive
data.

## Pull requests

- Keep changes scoped to the component the repository owns.
- Describe how you tested the change and on what kind of evidence the result is
  based.
- Match the existing code style and licensing of the repository.

## Code of Conduct

Participation is governed by the
[Code of Conduct](CODE_OF_CONDUCT.md). By participating, you agree to uphold
it.
