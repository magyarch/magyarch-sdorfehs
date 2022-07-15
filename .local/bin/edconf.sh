#!/bin/sh



# Dmenu script for editing some of my more frequently edited config files.


declare options=("alias
zsh
sdorfehs
profile
picom
vifm
dzen
xprofile
quit")

choice=$(echo -e "${options[@]}" | dmenu -i -c -g 2 -l 10 -nb '#1a1a1a' -sb '#2e8b57' -fn 'JetBrains Mono Nerd Font-12' -p 'Konfigfájlok:')

case "$choice" in
	quit)
		echo "Program terminated." && exit 1
	;;
	alias)
		choice="$HOME/.config/aliasrc"
	;;
	zsh)
		choice="$HOME/.config/zsh/.zshrc"
	;;
	sdorfehs)
		choice="$HOME/.config/sdorfehs/config"
	;;
	profile)
		choice="$HOME/.profile"
	;;
	vifm)
		choice="$HOME/.config/vifm/vifmrc"
	;;
	dzen)
		choice="$HOME/.local/bin/sdorfehsscripts/sdorfehs_bar"
	;;
	xprofile)
		choice="$HOME/.xprofile"
	;;
        picom)
		choice="$HOME/.config/picom.conf"
	;;
	*)
		exit 1
	;;
esac
$TERMINAL -e $EDITOR "$choice"
