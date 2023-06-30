<div align="center">

[![GitHub release (latest by date)](https://img.shields.io/github/v/release/M-L-P/grub2-fyde)](https://github.com/M-L-P/grub2-fyde/releases/latest)
[![GitHub all releases](https://img.shields.io/github/downloads/M-L-P/grub2-fyde/total)](https://github.com/M-L-P/grub2-fyde/releases)
[![GitHub Discussions](https://img.shields.io/github/discussions/M-L-P/grub2-fyde)](https://github.com/M-L-P/grub2-fyde/discussions)
[![GitHub Repo stars](https://img.shields.io/github/stars/M-L-P/grub2-fyde?style=social)](https://github.com/M-L-P/grub2-fyde/stargazers)

</div>

[简体中文](README.md)|[繁體中文](README-繁體中文.md)|[English](README-English.md)|...
--|--|--|--

<h1 align="center">grub2-fyde</h1>

这个是用来启动 fydeOS 的，添加了改编自 [brunch](https://github.com/sebanc/brunch) 的 grub 主题。
#### 文件结构树状图
<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-fyde/grub2-fyde.png">

-----------------------------------------------------------------------------------------------------------------------------------
## 💻️预览👀

<details>
<summary>🖱️点击展开查看🖱️</summary>

<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-fyde/dark.png"><br/>
<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-fyde/light.png">
</details>

## 🧭指南⬇️

### 复制到 ESP
- 复制文件夹 `zip: ESP/EFI/fyde` 到 `ESP: \EFI`；

## 📝FAQ❓️
### 安全启动
- 我还没试过，但可能支持安全启动，如果你使用 `grub.cer`(安全启动证书)，
- - `grub.cer`(安全启动证书) 来自 [Ventoy](https://github.com/ventoy/Ventoy)；
### 启动入口菜单
- 我已经改编了 `grub.cfg` 使得那三个启动入口都变成通用的了，所以无论 `FYDEOS-DUAL-BOOT` 是哪个分区都能够启动。

## ⭐收藏🌟
如果你喜欢并且期待未来的更新，你可以点亮星星。💫<br/>
告诉你的朋友，你得到了个好东西。

## 🎉来源🎊
- 绝大多数改编自 [Brunch Framework](https://github.com/sebanc/brunch);
- 安全证书来自 [Ventoy](https://github.com/ventoy/Ventoy);
- ...
