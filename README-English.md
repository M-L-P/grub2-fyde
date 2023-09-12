[grub2-brunch](https://github.com/M-L-P/grub2-brunch)|[grub2-fyde](https://github.com/M-L-P/grub2-fyde)|[grub2-androidx86](https://github.com/M-L-P/grub2-androidx86)
-|-|-

<div align="center">

[![GitHub release (latest by date)](https://img.shields.io/github/v/release/M-L-P/grub2-fyde)](https://github.com/M-L-P/grub2-fyde/releases/latest)
[![GitHub all releases](https://img.shields.io/github/downloads/M-L-P/grub2-fyde/total)](https://github.com/M-L-P/grub2-fyde/releases)
![GitHub Workflow Status (with event)](https://img.shields.io/github/actions/workflow/status/M-L-P/grub2-fyde/%E6%9E%84%E5%BB%BA.yml?link=https%3A%2F%2Fgithub.com%2FM-L-P%2Fgrub2-fyde%2Factions%2Fworkflows%2F%25E6%259E%2584%25E5%25BB%25BA.yml)
[![GitHub Discussions](https://img.shields.io/github/discussions/M-L-P/grub2-fyde)](https://github.com/M-L-P/grub2-fyde/discussions)
[![GitHub Repo stars](https://img.shields.io/github/stars/M-L-P/grub2-fyde?style=social)](https://github.com/M-L-P/grub2-fyde/stargazers)

</div>

[简体中文](README.md)|[繁體中文](README-繁體中文.md)|[English](README-English.md)|...
--|--|--|--

<h1 align="center">grub2-fyde</h1>

It is used to boot fydeOS, with grub theme added, adapted from which of [brunch](https://github.com/sebanc/brunch).
#### Feature
- Using patched [grub](https://github.com/a1ive/grub) of [a1ive](https://github.com/a1ive), it totally supports secure boot，
  - It can load any unsigned kernel, so that fydeOS can be booted with Secure Boot enabled, not disabled anymore;
- Dark mode;
- Schedule light theme at dawn, and dark theme at dusk;
- Mouse and PS/2 trackpad;
- Multiple languages;
- -Switching A|B slots on the graphical interface;
- Set the timeout on the graphical interface;
- Switch theme versions through graphical interface;
#### Global keys

Key|Function
-|-
[↑] [↓] | Navigation;
[Enter] | Enter the selected entry;
[ESC] | Returns to the previous menu list; (Exit from the main menu)
[Delete] | Show hidden menu;
[F5] | Refresh and re-enter grub2;
[F10] | Screenshot;
[Insert] | The entry of KernelSU; (You need to prepare your own patched kernel, temporarily)

#### Mouse mapping

Operation | Function
-|-
Slide up | [↑]
Down | [↓]
Left click | [Enter]
Right click | [ESC]

#### File Tree
<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-fyde/grub2-fyde.png">

-----------------------------------------------------------------------------------------------------------------------------------
## 💻️Preview👀

<details>
<summary>🖱️Click to Unfold to see🖱️</summary>

### 1024x768
<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-fyde/English/English.gif">

### 1920x1080
<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-fyde/English/1080p-light.png">
<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-fyde/English/1080p-dark.png">
</details>

## 🧭Guide⬇️

### Copy in ESP
- Copy the folder `zip: EFI/fyde` into `ESP: \EFI`;

## 📝FAQ❓️

### Secure Boot
- You should use [Yours-UEFI](https://github.com/M-L-P/Yours-UEFI) (with patch) to load `grub2-fyde.efi` (unsigned).

### Kernel SU
- The android for fydeOS is LXC, using the [kernel of its host system](https://github.com/openFyde/project-openfyde-patches/tree/r114-dev/sys-kernel/chromeos-kernel-5_4);
- If you need android root, you should use [KernelSU](https://github.com/tiann/KernelSU) to patch when compiling your kernel.
<details>
<summary>🖱️Click to Unfold to see🖱️</summary>

#### Source Codes
- [Kernel of fydeOS r114](https://github.com/openFyde/project-openfyde-patches/tree/r114-dev/sys-kernel/chromeos-kernel-5_4)；
- [KernelSU Repo](https://github.com/tiann/KernelSU)；
#### Operation
Having compiled，
- Rename it `kernelsu-5.4` or `kernelsu-5.10`,
- Copy it and paste to `ESP: \EFI\fyde`；
#### Compiled kernels are not temporarily available here for the following reasons
- As a rising star, KernelSU updates frequently, so I can't keep up with the pace of updates to KernelSU;
- There are several models of fydeOS for you, but I don't have any and cannot conduct any testing;
- There are indeed many users of fydeOS for PC, and a kernel patched with KernelSU can indeed be convenient for a large number of people, but I have to do other things in my spare time;

Therefore, only the entry for KernelSU is provided here, and a compiled kernel is not provided, temporarily.<br/>
If you have the ability to compile kernels, understand KernelSU, and want to help more people, you can pull request after your testing.

</details>

### Flappy Bird
[floppybird](https://github.com/mikebdp2/floppybird) from [mikebdp2](https://github.com/mikebdp2)
- - need CSM mode enabled, it cannot run on only UEFI;

## ⭐Star🌟
If you like it and are looking forward to the coming update, you can star it.💫<br/>
Tell your friends that you have got a good stuff.

## 🎉Credit🎊
- [grub](https://github.com/a1ive/grub) from [a1ive](https://github.com/a1ive);
- Type setting is adapted from [Brunch Framework](https://github.com/sebanc/brunch);
- Terminal box is adapted from the official theme of [Ventoy](https://github.com/ventoy/Ventoy);
- Many icons are adapted from emoji;
- [floppybird](https://github.com/mikebdp2/floppybird) from [mikebdp2](https://github.com/mikebdp2);
- The .gif cartoon is taken by using Hyper-V and [Screen2Gif](https://github.com/NickeManarin/ScreenToGif);
- ...
