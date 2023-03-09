#!/bin/bash

######################################################################################
#     >>  Maintained by team Vitunix (https://github.com/vitunix)  <<                #
#             >> A Simple and unique Arch based distro <<                            #
#             -----> Mail us at (vitunix@proton.me) <-----                           #
#     ----> configured by heapbytes (https://github.com/heapbytes) <-----            #
######################################################################################

content=$(cat checkfile.txt)

if [[ $content == "0" ]]; then
  betterlockscreen -u $HOME/.config/wallpapers/waves.png  && \
  echo '1' > checkfile.txt
fi

