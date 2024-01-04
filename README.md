Tested in Kali. It is likely that it will work on every Debian-based system.

# Overview
![](https://raw.githubusercontent.com/JulianGR/hacker-theme/no-bspwn/preview.png)



## System setup:
- **OS**: [Kali](https://www.kali.org/)
- **Terminal**: [kitty](https://sw.kovidgoyal.net/kitty/)
- **Shell**: 
  - [ZSH](https://www.zsh.org/) + [Oh-my-zsh](https://ohmyz.sh/)
  - Plugin manager for ZSH: [Antigen](https://github.com/zsh-users/antigen)
  - Theme: [powerlevel10k](https://github.com/romkatv/powerlevel10k)
  - Color scheme: [Gogh - Nord](https://gogh-co.github.io/Gogh/)
- **Font**: [Hack Nerd Font](https://www.nerdfonts.com/)


# Installation



For the **automatic** part:


```
git clone https://github.com/JulianGR/hacker-theme
cd hacker-theme/ && chmod +x main.sh main2.sh
./main.sh
```

After you've run this, run the following with **kitty**

```
cd hacker-theme/
./main2.sh
```


After you've run this:



+ Remove default keyring password following https://www.youtube.com/watch?v=w1ZEEc-ZY4w
+ Remove default keyboard shortcuts



# Shortcuts

Add them manually


### OS-wide shortcuts
+ <kbd>CTRL</kbd> + <kbd>Alt</kbd> + <kbd>T</kbd> : Open kitty
+ <kbd>Windows</kbd> + <kbd>W</kbd> : Close current window  
+ <kbd>Windows</kbd> + <kbd>(1,2,3,4)</kbd> : Change workspace 
+ <kbd>Windows</kbd> + <kbd>Shift</kbd> + <kbd>(1,2,3,4)</kbd> : Move the current window to another workspace. 
+ <kbd>Windows</kbd> + <kbd>Shift</kbd> + <kbd>G</kbd> : Open Google Chrome 
+ <kbd>Windows</kbd> + <kbd>Shift</kbd> + <kbd>O</kbd> : Open Opera
+ <kbd>Windows</kbd> + <kbd>Shift</kbd> + <kbd>F</kbd> : Open Firefox
+ <kbd>Windows</kbd> + <kbd>Shift</kbd> + <kbd>B</kbd> : Open Burp
+ <kbd>Windows</kbd> + <kbd>Shift</kbd> + <kbd>E</kbd> : Open VScode

### kitty shortcuts

+ <kbd>CTRL</kbd> + <kbd>Shift</kbd> + <kbd>T</kbd> : New tab
+ <kbd>CTRL</kbd> + <kbd>Shift</kbd> + <kbd>Q</kbd> : Close tab
+ <kbd>CTRL</kbd> + <kbd>Shift</kbd> + ⬅➡ : Move to tab
+ <kbd>CTRL</kbd> + <kbd>Shift</kbd> +<kbd>ALT</kbd> + <kbd>T</kbd> : Rename tab


# Custom commands

```sh
  escaneame [ip] # automatic nmap
```



# credits


https://github.com/geodimm/dotfiles/
