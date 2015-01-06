# The WULY Antimak

It's a keyboard layout.

## Installation & Testing

### Linux

To test:

    git clone https://github.com/jackrosenthal/wuly-antimak && xkbcomp -I$PWD/wuly-antimak/xkb wuly-antimak/xkb/test.xkb $DISPLAY

To install:

    git clone https://github.com/jackrosenthal/wuly-antimak && sudo bash wuly-antimak/linux/install.sh

### Windows

Currently there is only an AHK script, but you don't need admin rights. Perfect for when you need to
hop on a public computer.

To use it, download windows/bin/wuly.exe from this repo and run it. Press both the left and right alt
keys to exit.

If you are using your own computer, you may want to have it run at startup (not sure how to do that.)
