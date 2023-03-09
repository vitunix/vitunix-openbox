#!/bin/bash

#
#Script the updates the number of packages on polybar
#that are needed to be upgraded
#Script is provided by polybar/polybar-scripts
#Last edited by: G0urav <https://github.com/heapbytes>
#


if ! updates_arch=$(checkupdates 2> /dev/null | wc -l ); then
    updates_arch=0
fi

if ! updates_aur=$(paru -Qum 2> /dev/null | wc -l); then
    updates_aur=0
fi

updates=$((updates_arch + updates_aur))

if [ "$updates" -gt 0 ]; then
    echo "$updates"
else
    echo ""
fi

