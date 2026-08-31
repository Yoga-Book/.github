<p align="center">
  <img src="./assets/yoga-book-hero.svg" alt="Yoga Book Linux — hardware enablement for the original Intel-based Lenovo Yoga Book" width="100%">
</p>

<p align="center">
  <strong>One device. Every layer. Evidence you can reproduce.</strong>
  <br>
  Community-led Linux enablement for the original Intel-based Lenovo Yoga Book.
</p>

<p align="center">
  <a href="#get-started"><strong>Get started</strong></a>
  ·
  <a href="#project-map">Explore projects</a>
  ·
  <a href="#contributing-and-support">Contribute</a>
</p>

## Hardware support, end to end

The original Yoga Book combines a tablet, Halo touch keyboard, pen digitizer,
specialized audio path, and tightly integrated sensors in one unusual platform.
Supporting it well takes more than a kernel patch or a customized image.

We coordinate the device-specific layers required for a useful Linux system:
kernel enablement, input and haptics, audio, sensors, cameras, location,
installation, and system-level validation. The **Lenovo Yoga Book YB1-X91L** is
our primary integration and acceptance target; individual projects document any
additional supported models.

> [!IMPORTANT]
> This is active, device-specific development. A successful build or automated
> test is not proof that hardware works on the tablet. Project documentation
> distinguishes automated evidence from physical acceptance.

## Get started

<table>
  <tr>
    <td width="33%" valign="top">
      <img src="./assets/icons/installation.svg" alt="" width="30" height="30"><br>
      <sub><strong>01 · INSTALL</strong></sub>
      <h3>Prepare an Ubuntu image</h3>
      <p>Use the documented ISO-remastering workflow as the system-integration entry point.</p>
      <p><a href="https://github.com/Yoga-Book/Ubuntu-Autoinstall"><strong>Ubuntu Autoinstall →</strong></a></p>
    </td>
    <td width="33%" valign="top">
      <img src="./assets/icons/platform.svg" alt="" width="30" height="30"><br>
      <sub><strong>02 · DEVELOP</strong></sub>
      <h3>Follow platform work</h3>
      <p>Explore the kernel branches and patches that provide the hardware-enablement foundation.</p>
      <p><a href="https://github.com/Yoga-Book/Yoga-Book-Linux-Kernel"><strong>Linux Kernel →</strong></a></p>
    </td>
    <td width="33%" valign="top">
      <img src="./assets/icons/validation.svg" alt="" width="30" height="30"><br>
      <sub><strong>03 · VERIFY</strong></sub>
      <h3>Test the complete system</h3>
      <p>Audit an installation and record automated results separately from physical checks.</p>
      <p><a href="https://github.com/Yoga-Book/Yoga-Book-Validator"><strong>Yoga Book Validator →</strong></a></p>
    </td>
  </tr>
</table>

Before installing an image or package, read that repository's requirements and
status documentation. Back up important data and keep a known-good boot option.

## Project map

<table>
  <tr>
    <td width="33%" valign="top">
      <img src="./assets/icons/platform.svg" alt="" width="30" height="30"><br>
      <sub><strong>PLATFORM</strong></sub>
      <h3><a href="https://github.com/Yoga-Book/Yoga-Book-Linux-Kernel">Yoga Book Linux Kernel</a></h3>
      <p>Kernel source and Yoga Book hardware enablement.</p>
    </td>
    <td width="33%" valign="top">
      <img src="./assets/icons/installation.svg" alt="" width="30" height="30"><br>
      <sub><strong>INSTALLATION</strong></sub>
      <h3><a href="https://github.com/Yoga-Book/Ubuntu-Autoinstall">Ubuntu Autoinstall</a></h3>
      <p>Installer images and package integration.</p>
    </td>
    <td width="33%" valign="top">
      <img src="./assets/icons/validation.svg" alt="" width="30" height="30"><br>
      <sub><strong>VALIDATION</strong></sub>
      <h3><a href="https://github.com/Yoga-Book/Yoga-Book-Validator">Yoga Book Validator</a></h3>
      <p>CLI and graphical system and hardware checks.</p>
    </td>
  </tr>
  <tr>
    <td width="33%" valign="top">
      <img src="./assets/icons/input.svg" alt="" width="30" height="30"><br>
      <sub><strong>INPUT</strong></sub>
      <h3><a href="https://github.com/Yoga-Book/Halo-Keyboard">Halo Keyboard</a></h3>
      <p>Halo keyboard, touchpad, haptics, and input quirks.</p>
    </td>
    <td width="33%" valign="top">
      <img src="./assets/icons/sensors.svg" alt="" width="30" height="30"><br>
      <sub><strong>SENSORS</strong></sub>
      <h3><a href="https://github.com/Yoga-Book/Yoga-Book-Sensors">Yoga Book Sensors</a></h3>
      <p>Orientation, proximity, classification, and thermal policy.</p>
    </td>
    <td width="33%" valign="top">
      <img src="./assets/icons/location.svg" alt="" width="30" height="30"><br>
      <sub><strong>LOCATION</strong></sub>
      <h3><a href="https://github.com/Yoga-Book/Yoga-Book-GNSS">Yoga Book GNSS</a></h3>
      <p>BCM4752 GNSS receiver integration and gpsd bridge.</p>
    </td>
  </tr>
  <tr>
    <td width="33%" valign="top">
      <img src="./assets/icons/camera.svg" alt="" width="30" height="30"><br>
      <sub><strong>CAMERA</strong></sub>
      <h3><a href="https://github.com/Yoga-Book/Yoga-Book-Camera">Yoga Book Camera</a></h3>
      <p>Experimental front and rear camera userspace integration.</p>
    </td>
    <td width="33%" valign="top">
      <img src="./assets/icons/audio.svg" alt="" width="30" height="30"><br>
      <sub><strong>AUDIO</strong></sub>
      <h3><a href="https://github.com/Yoga-Book/Yoga-Book-ALSA-UCM-Config">Yoga Book ALSA UCM Config</a></h3>
      <p>ALSA Use Case Manager configuration.</p>
    </td>
    <td width="33%" valign="top">
      <img src="./assets/icons/firmware.svg" alt="" width="30" height="30"><br>
      <sub><strong>FIRMWARE</strong></sub>
      <h3><a href="https://github.com/Yoga-Book/Yoga-Book-Sound-Open-Firmware">Yoga Book Sound Open Firmware</a></h3>
      <p>Yoga Book Sound Open Firmware integration.</p>
    </td>
  </tr>
</table>

Read-only upstream desktop mirrors and archived experiments remain in the
[complete repository list](https://github.com/orgs/Yoga-Book/repositories), but
they are not recommended starting points for users.

## Engineering principles

<table>
  <tr>
    <td width="33%" valign="top">
      <img src="./assets/icons/boundaries.svg" alt="" width="30" height="30"><br>
      <sub><strong>CLEAR BOUNDARIES</strong></sub>
      <h3>Focused ownership</h3>
      <p>Kernel, userspace, packaging, and validation concerns stay in explicitly scoped repositories.</p>
    </td>
    <td width="33%" valign="top">
      <img src="./assets/icons/evidence.svg" alt="" width="30" height="30"><br>
      <sub><strong>VERIFIABLE RESULTS</strong></sub>
      <h3>Evidence first</h3>
      <p>Build results, VM checks, and physical-device acceptance are reported as different kinds of evidence.</p>
    </td>
    <td width="33%" valign="top">
      <img src="./assets/icons/safety.svg" alt="" width="30" height="30"><br>
      <sub><strong>RECOVERABLE WORKFLOWS</strong></sub>
      <h3>Safe by default</h3>
      <p>Installation and diagnostic workflows favor explicit targets, recovery paths, and reproducible results.</p>
    </td>
  </tr>
</table>

## Contributing and support

Contributions and reproducible hardware reports are welcome. Start with the
repository that owns the affected component, search its existing issues, and
read its local contribution guidance before proposing a change.

For system-wide behavior or help collecting evidence, begin with
[Yoga Book Validator](https://github.com/Yoga-Book/Yoga-Book-Validator). For a
driver, package, or application defect, report it directly to that component's
repository.

<details>
  <summary><strong>What to include in a hardware report</strong></summary>
  <br>
  <ul>
    <li>the exact Yoga Book model and firmware version;</li>
    <li>the distribution and running kernel version;</li>
    <li>reproduction steps and expected versus observed behavior;</li>
    <li>relevant logs or a Yoga Book Validator report; and</li>
    <li>whether the result came from automation, a virtual machine, or the physical tablet.</li>
  </ul>
</details>

Do not publish credentials, serial numbers, private firmware, or other
sensitive data.

<p align="center">
  <a href="https://github.com/orgs/Yoga-Book/repositories"><strong>All repositories</strong></a>
  ·
  <a href="https://github.com/search?q=org%3AYoga-Book+is%3Aissue+is%3Aopen&amp;type=issues"><strong>Open issues</strong></a>
  ·
  <a href="https://github.com/Yoga-Book/Yoga-Book-Validator"><strong>System validation</strong></a>
</p>

---

<p align="center">
  <sub>Independent open-source community project. Not affiliated with or endorsed by Lenovo.<br>Lenovo and Yoga Book are trademarks of Lenovo.</sub>
</p>
