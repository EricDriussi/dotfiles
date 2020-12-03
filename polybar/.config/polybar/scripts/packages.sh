#!/bin/sh

mine="$(pacman -Qe | wc -l)"

total="$(pacman -Q | wc -l)"

echo "$mine/$total"

