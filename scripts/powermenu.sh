dir="$HOME/.config/rofi/"
theme="dark"

shutdown=" Shut Down"
reboot=" Restart"
lock=" Lock"

rofi_cmd(){
	rofi -dmenu -p "Powermenu" -theme $dir/"$theme".rasi
}

run_rofi() {
	echo -e "$shutdown\n$reboot\n$lock" | rofi_cmd
}

chosen="$(run_rofi)"
case $chosen in
	$shutdown)
		systemctl poweroff
		;;
	$reboot)
		systemctl reboot
		;;
	$lock)
		qtile cmd-obj -o cmd -f shutdown
		;;
esac
