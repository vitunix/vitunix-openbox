#!/usr/bin/env bash

######################################################################################
#     >>  Maintained by team Vitunix (https://github.com/vitunix)  <<                #
#             >> A Simple and unique Arch based distro <<                            #
#             -----> Mail us at (vitunix@proton.me) <-----                           #
#     ----> configured by heapbytes (https://github.com/heapbytes) <-----            #
######################################################################################

## ---- Add your stuff here ---- ##

# Killing polybar instance, if any
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Starting out the polybar
polybar -q main -c "$HOME/.config/polybar/shapes/config.ini" &	

