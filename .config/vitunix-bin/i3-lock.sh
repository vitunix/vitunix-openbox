#!/bin/bash

icon=$HOME/Downloads/lock.png
PICTURE=/tmp/i3lock.png
SCREENSHOT="scrot $PICTURE"


BLUR="5x4"

$SCREENSHOT
#convert $PICTURE -blur $BLUR $PICTURE

convert "$PICTURE" -filter Gaussian -thumbnail 20% -sample 500% "$PICTURE"
convert "$PICTURE" "$icon" -gravity center -composite "$PICTURE"

i3lock -i $PICTURE
rm $PICTURE
