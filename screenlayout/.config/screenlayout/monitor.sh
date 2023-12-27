#!/bin/bash
set -o nounset -o errexit -o pipefail
[[ "${TRACE-0}" == "1" ]] && set -o xtrace

main() {
	local laptop_monitor
	local hdmi_monitor

	xrandr_output=$(xrandr)
	monitors=$(echo "$xrandr_output" | \grep -i " connected" | awk '{print $1}')
	laptop_monitor=$(echo "$monitors" | \grep -i "edp")
	hdmi_monitor=$(echo "$monitors" | \grep -i "hdmi")

	if [[ $hdmi_monitor ]]; then
		xrandr_args=$(setup_laptop_plus_ext_monitor "$xrandr_output" "$laptop_monitor" "$hdmi_monitor")
		eval "xrandr $xrandr_args"
		exit
	fi

	xrandr_args=$(setup_only_laptop "$xrandr_output" "$laptop_monitor")
	eval "xrandr $xrandr_args"
	exit
}

setup_only_laptop() {
	local xrandr_out="$1"
	local laptop_monitor="$2"
	local laptop_max_res

	laptop_max_res=$(echo "$xrandr_out" | \grep -i "$laptop_monitor" -A 1 | \grep -v " connected" | awk '{print $1}')

	echo "--output \"$laptop_monitor\" --primary --mode \"$laptop_max_res\" --pos 0x0 --rotate normal"
}

setup_laptop_plus_ext_monitor() {
	local xrandr_out="$1"
	local laptop_monitor="$2"
	local hdmi_monitor="$3"
	local laptop_max_res
	local hdmi_max_res

	laptop_max_res=$(echo "$xrandr_out" | \grep -i "$laptop_monitor" -A 1 | \grep -v " connected" | awk '{print $1}')
	hdmi_max_res=$(echo "$xrandr_output" | \grep -i "$hdmi_monitor" -A 1 | \grep -v " connected" | awk '{print $1}')

	echo "--output \"$hdmi_monitor\" --mode \"$hdmi_max_res\" --pos \"$(get_ext_monitor_position)\" --rotate normal --output \"$laptop_monitor\" --primary --mode \"$laptop_max_res\" --pos \"$(get_laptop_position)\" --rotate normal"
}

get_laptop_position() {
	if [[ -f "/etc/arch-release" ]]; then
		echo "2560x360"
	fi
	echo "0x360"
}
get_ext_monitor_position() {
	if [[ -f "/etc/arch-release" ]]; then
		echo "0x0"
	fi
	echo "1920x0"
}

main
