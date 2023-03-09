#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
#polybar bar1 2>&1 & disown
polybar -q bar1 -c "$HOME/.config/openbox/polybar/config.ini" &
