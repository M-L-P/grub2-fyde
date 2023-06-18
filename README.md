<div align="center">

[![GitHub release (latest by date)](https://img.shields.io/github/v/release/M-L-P/grub2-fyde)](https://github.com/M-L-P/grub2-fyde/releases/latest)
[![GitHub all releases](https://img.shields.io/github/downloads/M-L-P/grub2-fyde/total)](https://github.com/M-L-P/grub2-fyde/releases)
[![GitHub Discussions](https://img.shields.io/github/discussions/M-L-P/grub2-fyde)](https://github.com/M-L-P/grub2-fyde/discussions)
![GitHub Repo stars](https://img.shields.io/github/stars/M-L-P/grub2-fyde?style=social)

</div>

[English](README.md)|[简体中文](README-自述文件.md)|[繁體中文](README-繁體中文.md)|...
--|--|--|--

<h1 align="center">fyde-grub2</h1>

It is used to boot fydeOS, with grub theme added, adapted from which of [brunch](https://github.com/sebanc/brunch).
#### File Tree
<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/fyde-grub2.png">

-----------------------------------------------------------------------------------------------------------------------------------
## 💻️Preview👀

<details>
<summary>🖱️Click to Unfold to see🖱️</summary>

![image](https://github.com/M-L-P/fyde-grub2/assets/69227436/c114e5bf-433c-4c11-8147-9630bb3cf5d6)<br/>
![image](https://github.com/M-L-P/fyde-grub2/assets/69227436/acaad98a-167b-4252-9279-004287719e56)
</details>

## 🧭Guide⬇️

### Copy in ESP
- Copy the folder `zip: ESP/EFI/fyde` into `ESP: \EFI`;

### Copy in ext4
- Copy the folder `zip: ext4/boot/grub` into `FYDEOS-DUAL-BOOT: /boot`;
You can use crosh shell on fydeOS.<br/>
`Ctrl` + `Alt` + `t`<br/>
`shell`<br/>
```
sudo rm -rf /media/removable/FYDEOS-DUAL-BOOT/boot/grub/themes	#Delete old files of the theme
cd ~/Downloads/ext4/boot				  	#Enter the folder named boot
sudo cp -f -r grub /media/removable/FYDEOS-DUAL-BOOT/boot       #Copy the folder named grub into `FYDEOS-DUAL-BOOT: /boot`
sudo reboot							#reboot
```

## 📝FAQ❓️
### Secure Boot
- It might support secure boot if you use `grub.cer`(Secure Boot Certificate), which is what I haven't tried,
- - `grub.cer`(Secure Boot Certificate) is from [Ventoy](https://github.com/ventoy/Ventoy);
### Menuentries
- I have adapted `grub.cfg` to make the three menuentries generic so that it can boot no matter which partition is `FYDEOS-DUAL-BOOT`.

## ⭐Star🌟
If you like it and are looking forward to the coming update, you can star it.💫

## 🎉Credit🎊
- Many things are adapted from [Brunch Framework](https://github.com/sebanc/brunch);
- Secure Boot Certificate comes from [Ventoy](https://github.com/ventoy/Ventoy);
- ...
