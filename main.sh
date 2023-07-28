#!/bin/bash


# =========== Installing dependencies ===============
sudo apt-get update -y
sudo apt upgrade -y

sudo DEBIAN_FRONTEND=noninteractive apt install aircrack-ng amass apt-transport-https apt-utils arp-scan arping autoconf automake autopsy aptitude bash-completion bat binutils binwalk bison bloodhound build-essential burpsuite ca-certificates ca-certificates-java cadaver cargo cewl cherrytree cmake crackmapexec curl dconf-cli dirb dirbuster dnsrecon doxygen enum4linux evil-winrm exploitdb feroxbuster ffmpeg ffuf fontconfig fonts-font-awesome fonts-hack fonts-lato fonts-open-sans fonts-powerline foremost git gnome-software gnome-software-common gnupg2 gobuster golang gophish gparted gpg gzip hashcat hexedit hping3 hydra imagemagick java-common javascript-common john jq kali-wallpapers-2022 kali-wallpapers-2023 keyboard-configuration keyutils kitty libbz2-dev libcrypt1 libffi-dev liblzma-dev libncurses5-dev libncursesw5-dev libreadline-dev libsqlite3-dev libssl-dev llvm locate macchanger make man-db masscan medusa meson mimikatz mingw-w64-common mingw-w64-i686-dev mingw-w64-x86-64-dev mitmproxy nano ncrack neo4j neofetch net-tools network-manager nfs-common nmap nodejs npm open-vm-tools open-vm-tools-desktop openconnect openfortivpn openjdk-11-jre openjdk-11-jre-headless openjdk-17-jre openjdk-17-jre-headless openvpn os-prober p7zip p7zip-full passwd php php8.2 php8.2-cli php8.2-common pngcheck powershell powershell-empire powersploit proxychains4 python2 python2.7 python3 radare2 remmina rlwrap rpcbind ruby socat software-properties-common software-properties-gtk sqlite3 sqlmap tcpdump tcpreplay tk-dev unrar unzip uuid-runtime vlan wafw00f wfuzz wget wireshark xz-utils zlib1g-dev zsh zsh-autosuggestions zsh-common zsh-syntax-highlighting -y

sudo apt-get update -y
sudo apt autoremove -y

# =========== Installing shell ===============

cd
curl -L git.io/antigen > .antigen.zsh
cp /home/$USER/hacker-theme/tools/zshrc_conf $HOME/.zshrc
cp /home/$USER/hacker-theme/tools/.p10k.zsh $HOME/.p10k.zsh


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
