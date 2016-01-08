#!/bin/bash

# Swap control and caps (we should really just set up ~/.Xmodmaprc
/usr/bin/setxkbmap -option ctrl:swapcaps

# Map XF86 keys for brightness to something stump can digest
xmodmap -e "keycode 232 = F20"
xmodmap -e "keycode 233 = F21"

blueshift -l 42.7317:73.6925 >/dev/null 2>&1 &

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

exec /usr/bin/i3 >> /tmp/i3log.log
