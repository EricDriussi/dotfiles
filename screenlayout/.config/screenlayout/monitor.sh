#!/bin/bash

outputs=$(xrandr --query | grep " connected")

if [[ $outputs == *"HDMI"* ]]; then
	xrandr --output HDMI-0 --mode 2560x1440 --pos 0x0 --rotate normal --output eDP-1-1 --primary --mode 1920x1080 --pos 2560x360 --rotate normal
else
	xrandr --output eDP-1-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal
fi
