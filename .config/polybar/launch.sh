#!/usr/bin/env bash

# Kill all polybar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

# Lauch polybar, using default config located at ~/.config/polybar/config
polybar bar1 &

echo "Polybar launched..."
