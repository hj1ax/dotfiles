#!/usr/bin/env bash

# Kill all sxhkd instances
killall -q sxhkd

# Wait until the processes have been shut down
while pgrep -u $UID -x sxhkd > /dev/null; do sleep 1; done

# Lauch polybar, using default config located at ~/.config/polybar/config
sxhkd &

echo "Sxhkd launched..."
