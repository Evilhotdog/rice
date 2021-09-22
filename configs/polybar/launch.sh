#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

sleep 0.1;


# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar  --config=$HOME/.config/polybar/config top 2>&1 | tee -a /tmp/polybar1.log & disown
polybar  --config=$HOME/.config/polybar/config bottom 2>&1 | tee -a /tmp/polybar2.log & disown

#{ polybar top; } >> /tmp/polybar1.log 2>&1 &
#{ polybar bottom; } >> /tmp/polybar2.log 2>&1 &


echo "Bars launched..."
