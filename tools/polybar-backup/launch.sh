#!/usr/bin/env sh

## Add this to your wm startup file.

# Terminate already running bar instances
killall -q polybar

## Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

## Launch

## Left bar
polybar vpn -c ~/.config/polybar/current.ini &
polybar target -c ~/.config/polybar/current.ini &

## Center bar
polybar center -c ~/.config/polybar/current.ini &
