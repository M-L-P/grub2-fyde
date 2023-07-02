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
#### File Tree
<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-fyde/grub2-fyde.png">

-----------------------------------------------------------------------------------------------------------------------------------
## 💻️Preview👀

<details>
<summary>🖱️Click to Unfold to see🖱️</summary>

### 1024x768
<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-fyde/dark-1k.png">
<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-fyde/light-1k.png">
<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-fyde/1k-ter.png">

### 1920x1080
<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-fyde/dark.png">
<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-fyde/light.png">
<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-fyde/light-ter.png">
</details>

## 🧭Guide⬇️

### Copy in ESP
- Copy the folder `zip: ESP/EFI/fyde` into `ESP: \EFI`;

## 📝FAQ❓️
### Secure Boot
- It might support secure boot if you use `grub.cer`(Secure Boot Certificate), which is what I haven't tried,
- - `grub.cer`(Secure Boot Certificate) is from [Ventoy](https://github.com/ventoy/Ventoy);
### Menuentries
- I have adapted `grub.cfg` to make the three menuentries generic so that it can boot no matter which partition is `FYDEOS-DUAL-BOOT`.

## ⭐Star🌟
If you like it and are looking forward to the coming update, you can star it.💫<br/>
Tell your friends that you have got a good stuff.

## 🎉Credit🎊
- Many things are adapted from [Brunch Framework](https://github.com/sebanc/brunch);
- Secure Boot Certificate comes from [Ventoy](https://github.com/ventoy/Ventoy);
- Terminal box is adapted from the official theme of [Ventoy](https://github.com/ventoy/Ventoy);
- ...
