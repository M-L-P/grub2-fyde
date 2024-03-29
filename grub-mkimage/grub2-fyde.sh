#!/usr/bin/env sh

boot=$(cat ../mod_list/boot.txt)
device=$(cat ../mod_list/device.txt)
graphical=$(cat ../mod_list/graphical.txt)
shell=$(cat ../mod_list/shell.txt)
storage=$(cat ../mod_list/storage.txt)
terminal=$(cat ../mod_list/terminal.txt)
time=$(cat ../mod_list/time.txt)
var=$(cat ../mod_list/var.txt)
../grub-mkimage \
-m grub2-fyde.xz \
-d "../x86_64-efi" \
-c grub2-fyde.cfg \
-p "(memdisk)/grub" \
-o grub2-fyde.efi \
-O x86_64-efi \
$boot \
$device \
$graphical \
$shell \
$storage \
$terminal \
$time \
$var \
configfile tetris
