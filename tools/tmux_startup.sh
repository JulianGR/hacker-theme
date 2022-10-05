#!/bin/bash

tmux
tmux set-option -g status-right ""
tmux set -g mouse on
tmux set -g terminal-overrides 'xterm*:smcup@:rmcup@'
setxkbmap -option