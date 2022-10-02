#!/bin/bash


# Instalando Requerimientos
sudo apt-get update -y

# si no es parrot, descomentar la linea de abajo y comentar la de  sudo parrot-upgrade 
#sudo apt upgrade -y
sudo parrot-upgrade 

sudo DEBIAN_FRONTEND=noninteractive apt install acpi appstream apt-config-icons apt-file apt-transport-https autoconf automake bat binutils-mingw-w64-x86-64 bison bloodhound bluez brightnessctl bspwm build-essential ca-certificates caja cgroupfs-mount check cmake cmake-data cppcheck curl default-mysql-client docker.io doxygen feh ffmpeg ffuf flex fonts-open-sans fonts-powerline ftp fwupd fwupd-amd64-signed git gnome-software gnome-software-common gnome-terminal gnupg go-md2man gobject-introspection golang gpick hexedit inotify-tools jq kate kitty libasound2-dev libcairo2-dev libconfig-dev libdbus-1-dev libev-dev libevdev-dev libfontconfig1-dev libfreetype6-dev libgirepository1.0-dev libgl-dev libgl1-mesa-dev libjsoncpp-dev liblua5.3-dev libmpdclient-dev libnl-genl-3-dev libpam0g-dev libpcre2-dev libpcre3-dev libpixman-1-dev libpulse-dev libuv1-dev libx11-xcb-dev libxcb-composite0-dev libxcb-cursor-dev libxcb-damage0-dev libxcb-ewmh-dev libxcb-glx0-dev libxcb-icccm4-dev libxcb-image0-dev libxcb-keysyms1-dev libxcb-present-dev libxcb-randr0-dev libxcb-render-util0-dev libxcb-render0-dev libxcb-shape0-dev libxcb-sync-dev libxcb-util0-dev libxcb-xfixes0-dev libxcb-xinerama0-dev libxcb-xkb-dev libxcb-xrm-dev libxcb-xtest0-dev libxcb1-dev libxext-dev libxft-dev libxkbcommon-dev libxrandr-dev light-locker lightdm lsb-release lua-check lua5.3 make meson mingw-w64-common mingw-w64-x86-64-dev neo4j neovim net-tools nfs-common ninja-build nodejs npm ohcount open-vm-tools openvpn p7zip-full pkg-config pngcheck polybar python2 python3 python3-dev python3-pip python3-setuptools python3-sphinx python3-xcbgen rlwrap rofi rpcbind runc scrot scrub seclists slim software-properties-common software-properties-gtk ssss tmux upower uthash-dev vim vlc volatility3 wget wmname xcb xcb-proto xclip xdotool xfce4-power-manager xorg zsh -y



# Clona la repo de bspwm
cd
git clone https://github.com/baskerville/bspwm.git
cd bspwm/   
make
sudo make install
cp -r examples/ ../
cd ..
sudo rm -r bspwm/
mkdir ~/.config/bspwm
cp examples/bspwmrc ~/.config/bspwm/
chmod +x ~/.config/bspwm/bspwmrc
 

# Clona la repo de sxhkd
git clone https://github.com/baskerville/sxhkd.git
cd sxhkd/       
make
sudo make install
cp -r examples/ ../
cd ..
sudo rm -r sxhkd/
mkdir ~/.config/sxhkd
cp examples/sxhkdrc ~/.config/sxhkd/   
cp dot-files/tools/sxhkdrc ~/.config/sxhkd
sudo rm -r examples/   


# Clona el repo de polybar
git clone --recursive https://github.com/polybar/polybar
cd polybar/
cmake .
make -j$(nproc)
sudo make install
cd ..
sudo rm -r polybar/


# Clona el repo de picom
git clone https://github.com/yshui/picom
cd picom/
git submodule update --init --recursive
meson --buildtype=release . build
ninja -C build
sudo ninja -C build install
cd ..


# Añade el wallpaper
mkdir ~/.wallpapers
cp dot-files/tools/wallpaper.jpg ~/.wallpapers
echo 'feh --bg-fill ~/.wallpapers/wallpaper.jpg' >> ~/.config/bspwm/bspwmrc
echo 'xsetroot -cursor_name left_ptr &' >> ~/.config/bspwm/bspwmrc
echo 'wmname LG3D &' >> ~/.config/bspwm/bspwmrc


cp -r dot-files/tools/polybar-backup/ .
sudo mv polybar-backup/ ~/.config/
sudo rm -r ~/.config/polybar/ 2>/dev/null
sudo mv ~/.config/polybar-backup/ ~/.config/polybar/
echo '~/.config/polybar/./launch.sh' >> ~/.config/bspwm/bspwmrc

# Copia la config de picom
mkdir ~/.config/picom
echo 'bspc config focus_follows_pointer true' >> ~/.config/bspwm/bspwmrc  
cp dot-files/tools/picom.conf ~/.config/picom   
echo 'bspc config border_width 0' >> ~/.config/bspwm/bspwmrc
mkdir ~/.config/bin
echo 'picom --experimental-backends &' >> ~/.config/bspwm/bspwmrc
sudo rm -r picom/


# Instalacion de Fuentes para Polybar
sudo cp ~/.config/polybar/fonts/* /usr/share/fonts

# Mete el ethernet_status.sh, hackthebox_status.sh, target_to_hack.sh y target en ~/.config/bin
wget https://raw.githubusercontent.com/yorkox0/exaple01/main/hackthebox.sh
chmod +x hackthebox.sh
mv hackthebox.sh ~/.config/bin
cp dot-files/tools/target_to_hack.sh .
chmod +x target_to_hack.sh
mv target_to_hack.sh ~/.config/bin
echo '' > ~/.config/bin/target

# Copia la config de rofi personalizada
mkdir ~/.config/rofi
mkdir ~/.config/rofi/themes
wget https://raw.githubusercontent.com/VaughnValle/blue-sky/master/nord.rasi
cp nord.rasi ~/.config/rofi/themes
sudo rm nord.rasi


# Mueve los comandos settarget y cleartarget a /bin
sudo cp dot-files/tools/settarget /bin
sudo cp dot-files/tools/cleartarget /bin
sudo chmod +x /bin/settarget
sudo chmod +x /bin/cleartarget

# google chrome
cd
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y ./google-chrome-stable_current_amd64.deb
sudo rm ./google-chrome-stable_current_amd64.deb
cd

# evil-winrm
sudo gem install evil-winrm

# crackmapexec
python3 -m pip install pipx
pipx ensurepath
pipx install crackmapexec

# bajarle el tiempo al grub
sudo sed -i "s/GRUB_TIMEOUT=5/GRUB_TIMEOUT=1/" /etc/default/grub
sudo update-grub

# Instalando Hack Nerd Fonts
cd
cp dot-files/tools/Hack.zip .
unzip Hack.zip
sudo mv *.ttf /usr/share/fonts
rm *.zip

sudo gem install colorls

# bat
cd
mkdir -p ~/.local/bin 
ln -s /usr/bin/batcat ~/.local/bin/bat
cd


# CONFIGURANDO LA CONSOLA

# Instalando Oh My Tmux
git clone https://github.com/gpakosz/.tmux.git /home/$USER/.tmux
ln -s -f .tmux/.tmux.conf /home/$USER
cp /home/$USER/.tmux/.tmux.conf.local /home/$USER


# plugins tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

curl -L git.io/antigen > .antigen.zsh
cp /home/$USER/dot-files/tools/zshrc_conf $HOME/.zshrc

# clone the repo into "$HOME/src/gogh"
mkdir -p "$HOME/src"
cd "$HOME/src"
git clone https://github.com/Gogh-Co/Gogh.git gogh
./gogh/themes/dracula.sh
#./gogh/themes/nord.sh

# salirse, y cambiar la fuente

zsh

# configurar el powerlevel10k

#esto debería valer, pero gnome terminal abre por defecto bash siempre.
#chsh -s $(which zsh)
#sudo usermod --shell /bin/zsh 




cat /home/$USER/dot-files/tools/tmux_conf >> $HOME/.tmux.conf.local
tmux
# esperar a que haga todos los cambios y 
# salirse. poner tmux como comando al iniciar

tmux set-option -g status-right ""

# manual
echo "=== MANUAL =="
echo "[+] instalar burp"