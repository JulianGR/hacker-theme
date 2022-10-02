Tested in Parrot Security OS. It is likely that it will work on every Debian-based system.

# Overview
![BSPWM](https://i.ibb.co/B4YbKDy/2021-12-07-150410-1920x1080-scrot.png "autoBSPWM by yorkox")


## System setup:
- OS: Parrot security OS
- WM: bspwm
- Terminal: gnome-terminal
- Shell: 
  - ZSH + Oh-my-zsh
  - Plugin manager for ZSH: Antigen
  - Theme: powerlevel10k
  - Color scheme: Dracula
  - Tmux + Oh-my-tmux + Dracula theme
- Compositor: Picom
- Application Launcher: Rofi
- Font: Hack Nerd Font
- Polybar
- sxhkd: Daemon for shorcuts

# Installation
The installation is made up of two parts: one automatic and one manual (I could have made it automatic, but manual installation has less probability of errors). For the **automatic** part:
```
git clone https://github.com/JulianGR/hacker-theme
cd hacker-theme/ && chmod +x main.sh
./main.sh
```


The **manual** part:



1. After you've run the script,
	1. Close current gnome-terminal
	2. Open new gnome-terminal and go to Edit > Preferences
	3. Uncheck "Use monospace font" and change font to "Hack Nerd font Regular"


2. Run `zsh` and configure powerlevel10k
3. Close gnome-terminal and run `cat /home/$USER/dot-files/tools/tmux_conf >> $HOME/.tmux.conf.local && tmux`.
4. Be patient and wait for changes to be applied. Now go to preferences of gnome-terminal and Order and title tab. Check "Run custom command" and write `tmux`. That way, tmux will be run automatically when opening new terminal window.
5. Run
```
tmux set-option -g status-right ""
tmux set -g mouse on
tmux set -g terminal-overrides 'xterm*:smcup@:rmcup@'
```



# Shortcuts

## General windowing in Bspwm
<kbd>Windows</kbd> + <kbd>Enter</kbd> : Open gnome-terminal  
<kbd>Windows</kbd> + <kbd>W</kbd> : Close current window  
<kbd>Windows</kbd> + <kbd>(⬆⬅⬇➡)</kbd> : Move across windows of current workspace  
<kbd>Windows</kbd> + <kbd>(1,2,3,4,5,6,7,8,9,0)</kbd> : Change workspace 



<kbd>Windows</kbd> + <kbd>D</kbd> : Open Rofi. <kbd>Esc</kbd> to close it.  
<kbd>Windows</kbd> + <kbd>Alt</kbd> + <kbd>R</kbd> : Reboot bspwm config  
<kbd>Windows</kbd> + <kbd>Alt</kbd> + <kbd>Q</kbd> : Close session



<kbd>Windows</kbd> + <kbd>T</kbd> : Cambiar la ventana actual a modo "terminal" (normal). Nos sirve cuando la ventana está en modo pantalla completa o flotante.  
<kbd>Windows</kbd> + <kbd>M</kbd> : Cambiar la ventana actual a modo "completo" (no ocupa la polybar). Presione la mismas teclas para volver a modo "terminal" (normal).  
<kbd>Windows</kbd> + <kbd>F</kbd> : Cambiar la ventana actual a modo pantalla completa (ocupa todo incluyendo la polybar).  
<kbd>Windows</kbd> + <kbd>S</kbd> : Cambiar la ventana actual a modo "flotante".  
<kbd>Windows</kbd> + <kbd>Alt</kbd> + <kbd>(1,2,3,4,5,6,7,8,9,0)</kbd> : Mover la ventana actual a otro workspace.  
<kbd>Windows</kbd> + <kbd>Alt</kbd> + <kbd>(⬆⬅⬇➡)</kbd> : Cambiar el tamaño de la ventana actual (solo funciona si está en modo terminal o flotante).  
<kbd>Windows</kbd> + <kbd>Ctrl</kbd> + <kbd>(⬆⬅⬇➡)</kbd> : Cambiar la posición de la ventana actual (solo funciona en modo flotante).  
<kbd>Windows</kbd> + <kbd>Shift</kbd> + <kbd>G</kbd> : Open Google Chrome 
<kbd>Windows</kbd> + <kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>(⬆⬅⬇➡)</kbd> : Mostrar una preselección para luego abrir una ventana (una terminal, Google Chrome, un archivo, etc.). <kbd>Windows</kbd> + <kbd>Ctrl</kbd> + <kbd>Space</kbd> para deshacer la preselección.  

## Tmux shortcuts


# Custom commands

## Target
```sh
  settarget  "10.10.10.10"
  cleartarget
```


## Credits
- Inspired by S4vitar (https://github.com/s4vitar), original scripts by yorkox0 (https://github.com/yorkox0/autoBspwm)

