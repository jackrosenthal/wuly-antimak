#!/bin/bash
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
cp $DIR/xkb/symbols/wuly /usr/share/X11/xkb/symbols/
cp $DIR/xkb/99-keyboard.conf /etc/X11/xorg.conf.d/
mkdir -p /usr/share/kbd/keymaps/i386/wuly/
cp $DIR/ckb/wuly.map.gz /usr/share/kbd/keymaps/i386/wuly/
# Auto install console and x11 keymap if they have systemd
localectl set-keymap wuly
setxkbmap wuly
