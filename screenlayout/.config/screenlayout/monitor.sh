#!/bin/bash

xrandr_output=$(xrandr)
monitors=$(echo "$xrandr_output" | \grep -i " connected" | cut -d" " -f1)

edp=$(echo "$monitors" | \grep -i "edp")
edp_max_res=$(echo "$xrandr_output" | \grep -i "$edp" -A 1 | \grep -v " connected" | awk '{print $1}')

hdmi=$(xrandr --listactivemonitors | cut -d" " -f6 | \grep -i "hdmi")
if [[ $hdmi ]]; then
	setup_laptop_plus_ext_monitor
else
	setup_only_laptop
fi

function setup_only_laptop {
	xrandr --output "$edp" --primary --mode "$edp_max_res" --pos 0x0 --rotate normal
}

function setup_laptop_plus_ext_monitor {
	hdmi_max_res=$(echo "$xrandr_output" | \grep -i "$hdmi" -A 1 | \grep -v " connected" | awk '{print $1}')
	laptop_pos="0x360"
	ext_monitor_pos="1920x0"
	if [[ -f "/etc/arch-release" ]]; then
		laptop_pos="2560x360"
		ext_monitor_pos="0x0"
	fi
	xrandr --output "$hdmi" --mode "$hdmi_max_res" --pos "$ext_monitor_pos" --rotate normal --output "$edp" --primary --mode "$edp_max_res" --pos "$laptop_pos" --rotate normal
}
