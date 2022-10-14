Tested in Parrot Security OS. It is likely that it will work on every Debian-based system.

# Overview
![BSPWM](https://raw.githubusercontent.com/JulianGR/hacker-theme/main/photo.png)




## System setup:
- **OS**: [Parrot security OS](https://www.parrotsec.org/)
- **WM**: [bspwm](https://github.com/baskerville/bspwm)
- **Terminal**: [gnome-terminal](https://en.wikipedia.org/wiki/GNOME_Terminal)
- **Shell**: 
  - [ZSH](https://www.zsh.org/) + [Oh-my-zsh](https://ohmyz.sh/)
  - Plugin manager for ZSH: [Antigen](https://github.com/zsh-users/antigen)
  - Theme: [powerlevel10k](https://github.com/romkatv/powerlevel10k)
  - Color scheme: [Gogh - Nord](https://gogh-co.github.io/Gogh/)
  - [Tmux](https://en.wikipedia.org/wiki/Tmux) + [Oh-my-tmux](https://github.com/gpakosz/.tmux) + [tpm](https://github.com/tmux-plugins/tpm) + [Dracula](https://draculatheme.com/tmux) theme
- **Compositor**: [Picom](https://github.com/jonaburg/picom)
- **Application Launcher**: [Rofi](https://github.com/davatorium/rofi)
- **Font**: [Hack Nerd Font](https://www.nerdfonts.com/)
- [**Polybar**](https://github.com/polybar/polybar)
- [**sxhkd**](https://github.com/baskerville/sxhkd): Daemon for shorcuts


# Installation
The installation is made up of two parts: one automatic and one manual (I could have made it automatic, but manual installation has less probability of errors). 


For the **automatic** part:
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
3. Close gnome-terminal and run 
```sh
cat /home/$USER/hacker-theme/tools/tmux_conf >> $HOME/.tmux.conf.local && tmux
```

4. Go to preferences of gnome-terminal and Order and title tab. Check "Run custom command" and write 
```
/home/[YOUR USERNAME]/.config/tmux_startup.sh
```
That way, tmux will be run automatically when opening new terminal window. 
5. Uncheck "Show menu bar in new terminals" and uncheck "terminal sound beep"
6. [OPTIONAL]





**You are done!!** 
Close session and select BSPWM.

# Shortcuts

If you want to change them, check `tools/sxhkdrc`

## General windowing in Bspwm
### Most useful
+ <kbd>CTRL</kbd> + <kbd>Alt</kbd> + <kbd>T</kbd> : Open gnome-terminal  
+ <kbd>Windows</kbd> + <kbd>W</kbd> : Close current window  
+ <kbd>Windows</kbd> + <kbd>(⬆⬅⬇➡)</kbd> : Move across windows of current workspace  
+ <kbd>Windows</kbd> + <kbd>(1,2,3,4,5,6,7,8,9,0)</kbd> : Change workspace 
+ <kbd>Windows</kbd> + <kbd>Shift</kbd> + <kbd>(1,2,3,4,5,6,7,8,9,0)</kbd> : Move the current window to another workspace. 
+ <kbd>Windows</kbd> + <kbd>Shift</kbd> + <kbd>G</kbd> : Open Google Chrome 
+ <kbd>Windows</kbd> + <kbd>Shift</kbd> + <kbd>O</kbd> : Open Opera
+ <kbd>Windows</kbd> + <kbd>Shift</kbd> + <kbd>F</kbd> : Open Firefox

### Least useful
+ <kbd>Windows</kbd> + <kbd>D</kbd> : Open Rofi. <kbd>Esc</kbd> to close it.  
+ <kbd>Windows</kbd> + <kbd>Alt</kbd> + <kbd>R</kbd> : Reboot bspwm config  
+ <kbd>Windows</kbd> + <kbd>Alt</kbd> + <kbd>Q</kbd> : Close session
+ <kbd>Windows</kbd> + <kbd>T</kbd> : Switch the current window to "terminal" (normal) mode. It is useful when the window is in full screen or floating mode.  
+ <kbd>Windows</kbd> + <kbd>S</kbd> : Switch the current window to "floating" mode.  
+ <kbd>Windows</kbd> + <kbd>Ctrl</kbd> + <kbd>(⬆⬅⬇➡)</kbd> : Change the position of the current window (only works in floating mode).  
+ <kbd>Windows</kbd> + <kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>(⬆⬅⬇➡)</kbd> : Show preselect and then open a window (a terminal, Google Chrome, a file, etc.)<kbd>Windows</kbd> + <kbd>Ctrl</kbd> + <kbd>Space</kbd> to undo the preselect.  

## Tmux shortcuts

**Prefix** : <kbd>Ctrl</kbd> + <kbd>B</kbd>

+ <kbd>PREFIX</kbd> + <kbd>Shift</kbd> + <kbd>2</kbd>: split horizontally 
+ <kbd>PREFIX</kbd> + <kbd>Shift</kbd> + <kbd>5</kbd>: split vertically

+ <kbd>PREFIX HOLDING</kbd> + <kbd>(⬆⬅⬇➡)</kbd>: resize panel
+ <kbd>PREFIX</kbd> + <kbd>(⬆⬅⬇➡)</kbd>: change panel

+ <kbd>PREFIX</kbd> + <kbd>c</kbd>: create window
+ <kbd>PREFIX</kbd> + <kbd>,</kbd>: rename window

+ <kbd>PREFIX</kbd> + <kbd>SHIFT</kbd> + <kbd>1</kbd>: move panel that was splitted into new window
+ <kbd>PREFIX</kbd> + <kbd>n / p</kbd>: change window



To copy: select what you want to copy with the mouse (its faster)
+ <kbd>PREFIX</kbd> + <kbd>]</kbd>: paste


# Custom commands

## Target
```sh
  settarget  "10.10.10.10"
  cleartarget
```


## Credits
- Inspired by S4vitar (https://github.com/s4vitar), original scripts by yorkox0 (https://github.com/yorkox0/autoBspwm)

