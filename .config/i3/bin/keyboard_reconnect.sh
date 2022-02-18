#!/bin/sh

export DISPLAY=:0
export XAUTHORITY=/home/x86kernel/.Xauthority

# for Notebook only
# xmodmap -e 'remove mod1 = Alt_R'
# xmodmap -e "remove control = Control_R"
# xmodmap -e "keycode 105=Hangul_Hanja"
# xmodmap -e "keycode 134=Hangul" # for Notebook
###################

# for Keychron K6 only
xmodmap -e "keycode 108=Hangul" # for Notebook
######################
