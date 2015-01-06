#!/bin/bash
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
cp $DIR/xkb/symbols/wuly /usr/share/X11/xkb/symbols/
cp $DIR/xkb/10-keyboard.conf /etc/X11/xorg.conf.d/
setxkbmap wuly
