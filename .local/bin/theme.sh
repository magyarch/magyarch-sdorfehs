#!/bin/sh

SRL="$(echo -e "Light\nDark\nCancel" | dmenu -i -c -g 1 -l 3 -nb '#1a1a1a' -sb '#947cc3' -fn 'JetBrains Mono Nerd Font-12' -p  'Choose theme:')"

case $SRL in
    Light)
        sdorfehs -c "set padding 0 22 0 1" -c "set gap 0" -c "set bgcolor #c3cdc8" -c "set fgcolor #000000" -c "set bwcolor #000000" -c "set fwcolor #c3cdc8" &&
        pkill dzen2; myBar2
        ;;
    Dark)
        sdorfehs -c "restart"
        ;;
    *)
        ;;
esac
