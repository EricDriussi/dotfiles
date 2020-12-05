#!/bin/bash

expac --timefmt='%Y-%m-%d %T' '%l\t%n' > test_log

pacman -Qe | awk '{print "111 2222", $1}' > test_pac


notify-send "$(awk 'FNR==NR {a[$3]; next} $3 in a {print $1, $2, $3}' test_pac test_log | sort -rk 1,1 -rk 2,2 | awk '{print $3} NR==10{exit}')"

rm test_log
rm test_pac
