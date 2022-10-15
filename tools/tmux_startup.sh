#!/bin/bash

export TERM=xterm-256color
tmux set-option -g status-right ""
tmux set -g status-right ""
tmux set -g mouse on
tmux set -g terminal-overrides 'xterm*:smcup@:rmcup@'
setxkbmap -option
tmux