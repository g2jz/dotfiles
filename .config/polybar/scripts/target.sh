#!/bin/sh
 
TARGET=$(/bin/cat /home/g2jz/.config/polybar/scripts/.target.tmp)

if [ ! -z "$TARGET" ]; then
    echo "%{F#ff0000}什%{F#ffffff} $TARGET%{u-}"
else
    echo "%{F#ff0000}什%{u-} No target"
fi
