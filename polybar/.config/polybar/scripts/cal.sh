#!/bin/sh

WIDTH=270
HEIGHT=274
BOTTOM=false
DATE="$(date +"🗓️  %a, %d %b")"

case "$1" in
    --popup)

				gsimplecal

        ;;
    *)
        echo "$DATE"
        ;;
esac
