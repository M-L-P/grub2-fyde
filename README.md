[English](README.md)|[简体中文](自述文件.md)|[繁體中文](繁體中文.md)|...
--|--|--|--

# fyde-grub2
It is used to boot fydeOS, with grub theme added, adapted from which of [brunch](https://github.com/sebanc/brunch).
#### File Tree
<img src="README/fyde-grub2.png">

## 💻️Preview👀

<details>
<summary>🖱️Click to Unfold to see🖱️</summary>

![image](https://github.com/M-L-P/fyde-grub2/assets/69227436/0d8da192-9718-4d29-b40a-edd2c00530f3)
</details>

## 🧭Guide⬇️
### Copy in ESP
- Copy the folder `zip: ESP/EFI/fyde` into `ESP: \EFI`;

### Copy in ext4
- Copy the folder `zip: ext4/boot/grub` into `FYDEOS-DUAL-BOOT: /boot`;

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
