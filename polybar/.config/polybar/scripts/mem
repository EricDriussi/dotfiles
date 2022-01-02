#!/bin/bash

#out="$(free | awk '/Mem:/ {print $3/1000000"/"$2/1000000}')"
out="$(free | awk '/Mem:/ {printf "%0.1f/%0.1f",$3/1000000, $2/1000000}')"
echo $out

#printf "%0.2f\n",$1
