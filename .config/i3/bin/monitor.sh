#!/bin/bash

intern=eDP-1
extern=HDMI-1

if xrandr | grep "$extern connected"; then
    xrandr --output "$intern" --off --output "$extern" --auto
fi
