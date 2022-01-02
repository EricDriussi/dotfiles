#!/bin/bash

out="$(ps axch -o cmd:15,%mem --sort=-%mem | sort -urk 2 | head)"

notify-send "$out"
