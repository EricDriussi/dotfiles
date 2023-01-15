#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u "$UID" -x polybar >/dev/null; do sleep 1; done

# Launch based on available outputs
outputs=$(xrandr --query | grep " connected")
if [[ $outputs == *"HDMI"* ]]; then
	polybar Main &
	polybar Secondary &
else
	polybar Single &
fi
