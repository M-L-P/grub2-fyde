<div align="center">

[![GitHub release (latest by date)](https://img.shields.io/github/v/release/M-L-P/grub2-fyde)](https://github.com/M-L-P/grub2-fyde/releases/latest)
[![GitHub all releases](https://img.shields.io/github/downloads/M-L-P/grub2-fyde/total)](https://github.com/M-L-P/grub2-fyde/releases)
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
[Ctrl]+[Alt]+[F12] | Screenshot; (Requires firmware support for modifier keys)
[Xxxxxx] | Xxxxxx_XX

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
- Copy the folder `zip: ESP/EFI/fyde` into `ESP: \EFI`;

## 📝FAQ❓️
### Secure Boot
- You should use [rEFInd-theme-Yours](https://github.com/M-L-P/rEFInd-theme-Yours) (with patch) to load `grub2-fyde.efi` (unsigned).

### Menuentries
- I have adapted `grub.cfg` to make the three menuentries generic so that it can boot no matter which partition is `FYDEOS-DUAL-BOOT`.
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
