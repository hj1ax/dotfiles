#!/usr/bin/env bash

# Kill all picom instances
killall -q picom

# Wait until the processes have been shut down
while pgrep -u $UID -x picom > /dev/null; do sleep 1; done

# Lauch picom
picom --experimental-backends --config ~/.config/picom/picom.conf &

echo "Picom launched..."
