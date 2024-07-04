#!/bin/bash

main_monitor=$(xrandr --listactivemonitors | cut -d" " -f6 | \grep -i "hdmi")

IDs=$(xinput | grep "Wacom" | cut -f 2 | cut -c 4-5)
echo "$IDs" | while IFS= read -r ID; do
	xinput map-to-output "$ID" "$main_monitor"
done
