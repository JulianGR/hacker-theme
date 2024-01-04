#!/bin/bash

touch ~/.hushlogin

# =========== Installing dependencies ===============
sudo apt update -y
sudo DEBIAN_FRONTEND=noninteractive apt full-upgrade -y
sudo DEBIAN_FRONTEND=noninteractive apt install kali-linux-default

sudo DEBIAN_FRONTEND=noninteractive apt install apt-transport-https autoconf automake aptitude bash-completion bat bison bloodhound burpsuite cargo cmake dconf-cli doxygen  feroxbuster ffmpeg fonts-hack fonts-open-sans fonts-powerline foremost  gnome-software gnome-software-common gnupg2 gobuster golang hexedit imagemagick  javascript-common  jq kali-wallpapers-2022 kali-wallpapers-2023 keyutils kitty libbz2-dev liblzma-dev libncursesw5-dev libreadline-dev libsqlite3-dev libssl-dev llvm locate  meson neo4j neofetch  network-manager nodejs npm open-vm-tools open-vm-tools-desktop openconnect openfortivpn openjdk-11-jre openjdk-11-jre-headless  openvpn os-prober pngcheck remmina rlwrap software-properties-common software-properties-gtk tk-dev uuid-runtime -y

sudo apt update -y
sudo apt autoremove -y

# =========== Installing shell ===============

cd
curl -L git.io/antigen > .antigen.zsh
cp /home/$USER/hacker-theme/tools/zshrc_conf $HOME/.zshrc
#cp /home/$USER/hacker-theme/tools/p10k.zsh $HOME/.p10k.zsh
#chown jules:jules $HOME/.p10k.zsh
#chmod 777 $HOME/.p10k.zsh

# =========== Installing Hack Nerd fonts ===============
cd
cp hacker-theme/tools/Hack.zip .
unzip Hack.zip
sudo mv *.ttf /usr/share/fonts
rm *.zip


# =========== Installing gems ===============
sudo gem install evil-winrm colorls

echo "=========================================="
echo "=== Execute main2.sh WITH KITTY ==="
echo "=========================================="
