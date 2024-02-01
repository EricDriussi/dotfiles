#!/bin/bash

# Terminate already running bar instances
killall -9 polybar

# Wait until the processes have been shut down
while pgrep -u "$UID" -x polybar >/dev/null; do sleep 1; done

# Launch based on available outputs
edp=$(xrandr --listactivemonitors | cut -d" " -f6 | \grep -i "edp")
hdmi=$(xrandr --listactivemonitors | cut -d" " -f6 | \grep -i "hdmi")

if [[ $hdmi ]]; then
	MONITOR="$edp" polybar Main &
	MONITOR="$hdmi" polybar Secondary &
else
	MONITOR="$edp" polybar Single &
fi
