#!/bin/bash

LEVEL=$(light | xargs printf "%.f")

case "$1" in
  "up")
    [[ "$LEVEL" -eq 100 ]]
    sudo light -A 5
    ;;
  "down")
    sudo light -U 5
    ;;
esac

LEVEL=$(light | xargs printf "%.f")
# notification
volnoti-show -s /usr/share/pixmaps/volnoti/display-brightness-symbolic.svg $LEVEL
