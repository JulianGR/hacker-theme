Tested in Kali and Parrot Os (Check the script). It is likely that it will work on every Debian-based system.

# Overview
![](https://raw.githubusercontent.com/JulianGR/hacker-theme/main/preview.png)



https://github.com/geodimm/dotfiles/tree/main



## System setup:
- **OS**: [Kali](https://www.kali.org/)
- **Terminal**: [mate-terminal](https://github.com/mate-desktop/mate-terminal)
- **Shell**: 
  - [ZSH](https://www.zsh.org/) + [Oh-my-zsh](https://ohmyz.sh/)
  - Plugin manager for ZSH: [Antigen](https://github.com/zsh-users/antigen)
  - Theme: [powerlevel10k](https://github.com/romkatv/powerlevel10k)
  - Color scheme: [Gogh - Nord](https://gogh-co.github.io/Gogh/)
  - [Tmux](https://en.wikipedia.org/wiki/Tmux) + [Oh-my-tmux](https://github.com/gpakosz/.tmux) + [tpm](https://github.com/tmux-plugins/tpm) + [Nord](https://github.com/arcticicestudio/nord-tmux) theme
- **Font**: [Hack Nerd Font](https://www.nerdfonts.com/)
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
	2. Open new mate-terminal and go to Edit > Preferences
	3. Uncheck "Use monospace font" and change font to "Hack Nerd font Regular"


2. Run `zsh` and configure powerlevel10k

3. Go to preferences of mate-terminal. Uncheck "Show menu bar in new terminals" and uncheck "terminal sound beep". Now, under "Order and title" tab, check "Run custom command" and write 
```
/home/[YOUR USERNAME]/.config/tmux_startup.sh
```
That way, tmux will be run automatically when opening new terminal window. 

+ https://www.youtube.com/watch?v=w1ZEEc-ZY4w
+ remove default keyboard shortcuts



**You are done!!** 
Close session and select BSPWM.

# Shortcuts

If you want to change them, check `tools/sxhkdrc`

## General windowing in Bspwm
### Most useful
+ <kbd>CTRL</kbd> + <kbd>Alt</kbd> + <kbd>T</kbd> : Open mate-terminal  
+ <kbd>Windows</kbd> + <kbd>W</kbd> : Close current window  
+ <kbd>Windows</kbd> + <kbd>(⬆⬅⬇➡)</kbd> : Move across windows of current workspace  
+ <kbd>Windows</kbd> + <kbd>(1,2,3,4,5,6,7,8,9,0)</kbd> : Change workspace 
+ <kbd>Windows</kbd> + <kbd>Shift</kbd> + <kbd>(1,2,3,4,5,6,7,8,9,0)</kbd> : Move the current window to another workspace. 
+ <kbd>Windows</kbd> + <kbd>Shift</kbd> + <kbd>G</kbd> : Open Google Chrome 
+ <kbd>Windows</kbd> + <kbd>Shift</kbd> + <kbd>O</kbd> : Open Opera
+ <kbd>Windows</kbd> + <kbd>Shift</kbd> + <kbd>F</kbd> : Open Firefox

### Least useful
+ <kbd>Windows</kbd> + <kbd>ESC</kbd>: restart sxhkd
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
+ <kbd>CTRL</kbd> + <kbd>d</kbd>: remove tmux tab (yes, without the prefix)
+ <kbd>PREFIX</kbd> + <kbd>,</kbd>: rename window
+ <kbd>PREFIX</kbd> + <kbd>SHIFT</kbd> + <kbd>1</kbd>: move panel that was splitted into new window
+ <kbd>PREFIX</kbd> + <kbd>n / p</kbd>: change window


To copy: select what you want to copy with the mouse (its faster)
+ <kbd>PREFIX</kbd> + <kbd>]</kbd>: paste


# Custom commands


```sh
  escaneame # automatically scans services and versions of only open ports of IP set with settarget
```

