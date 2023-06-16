[![GitHub release (latest by date)](https://img.shields.io/github/v/release/M-L-P/fyde-grub2)](https://github.com/M-L-P/fyde-grub2/releases/latest)
[![GitHub all releases](https://img.shields.io/github/downloads/M-L-P/fyde-grub2/total)](https://github.com/M-L-P/fyde-grub2/releases)
[![GitHub Discussions](https://img.shields.io/github/discussions/M-L-P/fyde-grub2)](https://github.com/M-L-P/fyde-grub2/discussions)
![GitHub Repo stars](https://img.shields.io/github/stars/M-L-P/fyde-grub2?style=social)

[English](README.md)|[简体中文](README-自述文件.md)|[繁體中文](README-繁體中文.md)|...
--|--|--|--

# fyde-grub2
這個是用來啟動 fydeOS 的，添加了改編自 [brunch](https://github.com/sebanc/brunch) 的 grub 主題。
#### 文件結構樹狀圖
<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/fyde-grub2.png">

## 💻️預覽👀

<details>
<summary>🖱️點擊展開查看🖱️</summary>

![image](https://github.com/M-L-P/fyde-grub2/assets/69227436/c114e5bf-433c-4c11-8147-9630bb3cf5d6)<br/>
![image](https://github.com/M-L-P/fyde-grub2/assets/69227436/acaad98a-167b-4252-9279-004287719e56)
</details>

## 🧭指南⬇️

### 復製到 ESP
- 復製文件夾 `zip: ESP/EFI/fyde` 到 `ESP: \EFI`；

### 復製到 ext4
- 復製文件夾 `zip: ext4/boot/grub` 到 `FYDEOS-DUAL-BOOT: /boot`；
你可以在 fydeOS 上使用 crosh shell。
`Ctrl` + `Alt` + `t`<br/>
`shell`<br/>
```
sudo rm -rf /media/removable/FYDEOS-DUAL-BOOT/boot/grub/themes	#刪除舊的主題文件
cd ~/Downloads/ext4/boot                                        #定位文件夾 boot
sudo cp -f -r grub /media/removable/FYDEOS-DUAL-BOOT/boot       #復製文件夾 grub 到 `FYDEOS-DUAL-BOOT: /boot`
sudo reboot                                                     #重啟
```

## 📝FAQ❓️
### 安全啟動
- 我還沒試過，但可能支持安全啟動，如果你使用 `grub.cer`(安全啟動證書)，
- - `grub.cer`(安全啟動證書) 來自 [Ventoy](https://github.com/ventoy/Ventoy)；
### 啟動入口菜單
- 我已經改編了 `grub.cfg` 使得那三個啟動入口都變成通用的了，所以無論 `FYDEOS-DUAL-BOOT` 是哪個分區都能夠啟動。

## ⭐收藏🌟
如果你喜歡並且期待未來的更新，你可以點亮星星。💫

## 🎉來源🎊
- 絕大多數改編自 [Brunch Framework](https://github.com/sebanc/brunch);
- 安全證書來自 [Ventoy](https://github.com/ventoy/Ventoy);
- ...
