#!/bin/bash


# =========== Installing dependencies ===============
sudo apt-get update -y

# =========== PARROT OS USERS ATTENTION ===============

# If you want to install this theme in Parrot Security OS system, 
# 1. comment below and uncomment  sudo parrot-upgrade -y
#2. Below there is a block called Python for Kali. Comment the whole block

sudo apt upgrade -y
#sudo parrot-upgrade -y

sudo DEBIAN_FRONTEND=noninteractive apt install acpi appstream apt-config-icons apt-file apt-transport-https autoconf automake bat binutils-mingw-w64-x86-64 bison  bluez brightnessctl  build-essential ca-certificates caja cgroupfs-mount check cmake cmake-data cppcheck curl default-mysql-client docker.io doxygen feh ffmpeg ffuf flex fonts-open-sans fonts-powerline ftp gpg gnupg2 fwupd fwupd-amd64-signed git gnome-software gnome-software-common  gnupg go-md2man gobject-introspection golang gpick hexedit inotify-tools jq   libasound2-dev libcairo2-dev libconfig-dev libdbus-1-dev libev-dev libevdev-dev libfontconfig1-dev libfreetype6-dev libgirepository1.0-dev libgl-dev libgl1-mesa-dev libjsoncpp-dev liblua5.3-dev libmpdclient-dev libnl-genl-3-dev libpam0g-dev libpcre2-dev libpcre3-dev libpixman-1-dev libpulse-dev libuv1-dev libx11-xcb-dev libxcb-composite0-dev libxcb-cursor-dev libxcb-damage0-dev libxcb-ewmh-dev libxcb-glx0-dev libxcb-icccm4-dev libxcb-image0-dev libxcb-keysyms1-dev libxcb-present-dev libxcb-randr0-dev libxcb-render-util0-dev libxcb-render0-dev libxcb-shape0-dev libxcb-sync-dev libxcb-util0-dev libxcb-xfixes0-dev libxcb-xinerama0-dev libxcb-xkb-dev libxcb-xrm-dev libxcb-xtest0-dev libxcb1-dev libxext-dev libxft-dev libxkbcommon-dev libxrandr-dev light-locker  locate lsb-release lua-check lua5.3 make mate-terminal meson mingw-w64-common mingw-w64-x86-64-dev   net-tools nfs-common ninja-build nodejs npm ohcount open-vm-tools openvpn p7zip-full pkg-config pngcheck  python2 python3 python3-dev python3-pip python3-setuptools python3-sphinx python3-xcbgen rlwrap  rpcbind runc scrot scrub seclists slim software-properties-common software-properties-gtk ssss tmux upower uthash-dev vim wget wmname xcb xcb-proto xclip xdotool xfce4-power-manager  zsh libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev python3-openssl -y

sudo apt-get update -y
sudo apt autoremove -y


# =========== Installing configs ===============
mkdir ~/.wallpapers
cp hacker-theme/tools/wallpaper.jpg ~/.wallpapers
echo 'feh --bg-fill ~/.wallpapers/wallpaper.jpg' >> ~/.config/feh
cd
cp hacker-theme/tools/tmux_startup.sh ~/.config/
chmod +x  ~/.config/tmux_startup.sh


# =========== Installing google chrome ===============
cd
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y ./google-chrome-stable_current_amd64.deb
sudo rm ./google-chrome-stable_current_amd64.deb
cd

# =========== Installing opera ===============

curl -fsSL https://deb.opera.com/archive.key | sudo gpg --dearmor -o /usr/share/keyrings/operabrowser-keyring.gpg 
echo "deb [signed-by=/usr/share/keyrings/operabrowser-keyring.gpg] https://deb.opera.com/opera-stable/ stable non-free" | sudo tee /etc/apt/sources.list.d/opera-stable.list
sudo apt update
sudo DEBIAN_FRONTEND=noninteractive apt install -y opera-stable

# =========== Installing python2 for kali ===============
# =========== remove this block if ParrotOS ===============
cd
curl https://pyenv.run | bash
pyenv install 2.7.18

# for using python2: pyenv global 2.7.18
# for using python3: pyenv global system



# =========== Installing gems ===============
sudo gem install evil-winrm colorls

# =========== Installing crackmapexec ===============
python3 -m pip install pipx
pipx ensurepath
pipx install crackmapexec

# =========== Reducing time grub ===============
sudo sed -i "s/GRUB_TIMEOUT=5/GRUB_TIMEOUT=1/" /etc/default/grub
sudo update-grub

# =========== Installing Hack Nerd fonts ===============
cd
cp hacker-theme/tools/Hack.zip .
unzip Hack.zip
sudo mv *.ttf /usr/share/fonts
rm *.zip

# =========== Installing batcat ===============
cd
mkdir -p ~/.local/bin 
ln -s /usr/bin/batcat ~/.local/bin/bat
cd

# =========== Visual studio code ===============
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" | sudo tee /etc/apt/sources.list.d/vscode.list
sudo apt update
sudo apt install code
rm microsoft.pgp


# =========== Fixing scrolling speed ===============
sudo apt install imwheel
echo "Set it to 3"
bash <(curl -s http://www.nicknorton.net/mousewheel.sh)




# ===================================
# =========== CONSOLE ===============
# ===================================



# =========== Installing Oh my tmux ===============
git clone https://github.com/gpakosz/.tmux.git /home/$USER/.tmux
ln -s -f .tmux/.tmux.conf /home/$USER
cp /home/$USER/.tmux/.tmux.conf.local /home/$USER

cat /home/$USER/hacker-theme/tools/tmux_conf >> $HOME/.tmux.conf.local

curl -L git.io/antigen > .antigen.zsh
cp /home/$USER/hacker-theme/tools/zshrc_conf $HOME/.zshrc

# =========== Installing color scheme ===============
mkdir -p "$HOME/src"
cd "$HOME/src"
git clone https://github.com/Gogh-Co/Gogh.git gogh
./gogh/themes/nord.sh
# if you want other theme: ./gogh/themes/dracula.sh

cd
sudo rm -r src/
rm LICENSE.md
rm readme.md

# =========== Updating files (for locate command) ===============
sudo updatedb

echo "=========================================="
echo "=== now proceed to manual installation ==="
echo "=========================================="
