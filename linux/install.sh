#!/bin/bash
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
cp $DIR/xkb/symbols/wuly /usr/share/X11/xkb/symbols/
cp $DIR/xkb/symbols/wuly2 /usr/share/X11/xkb/symbols/
#cp $DIR/xkb/99-keyboard.conf /etc/X11/xorg.conf.d/
mkdir -p /usr/share/kbd/keymaps/i386/wuly/
command -v ckbcomp >/dev/null && (ckbcomp wuly | gzip -f - > /usr/share/kbd/keymaps/i386/wuly/wuly.map.gz) || $DIR/ckb/wuly.map.gz /usr/share/kbd/keymaps/i386/wuly/
echo "wuly was installed."
echo "If you are using systemd, use \`localectl set-keymap wuly\` to install."
echo "To start using wuly now, run \`setxkbmap wuly\`."
echo "...or in a console, run \`loadkeys wuly\` as root."
