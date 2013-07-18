#!/bin/bash

# Swap control and caps (we should really just set up ~/.Xmodmaprc
/usr/bin/setxkbmap -option ctrl:swapcaps

# Map function key to Hyper_L
xmodmap -e "keycode 151 = Hyper_L"

exec /home/kotfic/bin/stumpwm

