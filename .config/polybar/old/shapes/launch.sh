#!/usr/bin/env bash

#
#     ----->  Maintained by team Vitunix (https://github.com/vitunix) <----
#                               >> A Simple and unique polybar <<
#                           -----> Mail us at (vitunix@proton.me) <-----
#      -----> configured by heapbytes (https://github.com/heapbytes) <----
#

# Add this script to your wm startup file.

DIR="$HOME/.config/polybar/shapes"

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch the bar
polybar -q main -c "$DIR"/config.ini &
