#!/bin/bash

xrandr_output=$(xrandr)
monitors=$(echo "$xrandr_output" | \grep -i " connected" | cut -d" " -f1)

edp=$(echo "$monitors" | \grep -i "edp")
edp_max_res=$(echo "$xrandr_output" | \grep -i "$edp" -A 1 | \grep -v " connected" | awk '{print $1}')

hdmi=$(xrandr --listactivemonitors | cut -d" " -f6 | \grep -i "hdmi")
if [[ $hdmi ]]; then
	hdmi_max_res=$(echo "$xrandr_output" | \grep -i "$hdmi" -A 1 | \grep -v " connected" | awk '{print $1}')
	xrandr --output "$hdmi" --mode "$hdmi_max_res" --pos 0x0 --rotate normal --output "$edp" --primary --mode "$edp_max_res" --pos 2560x360 --rotate normal
else
	xrandr --output "$edp" --primary --mode "$edp_max_res" --pos 0x0 --rotate normal
fi
