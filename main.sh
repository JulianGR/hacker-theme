#!/bin/bash


# =========== Installing dependencies ===============
sudo apt-get update -y
sudo apt upgrade -y

sudo DEBIAN_FRONTEND=noninteractive apt install adwaita-icon-theme aircrack-ng amass apt-transport-https apt-utils arp-scan arping autoconf automake autopsy bash-completion bat binutils binwalk bison bloodhound build-essential burpsuite ca-certificates ca-certificates-java cadaver cargo cewl cherrytree cmake crackmapexec dirb dirbuster dnsrecon doxygen enum4linux evil-winrm exploitdb feroxbuster ffmpeg ffuf fonts-font-awesome fonts-hack fonts-lato fonts-open-sans fonts-powerline foremost git gnome-software gnome-software-common gnupg2 gobuster golang gophish gparted gpg gzip hashcat hexedit hping3 hydra imagemagick java-common javascript-common john jq kali-wallpapers-2022 kali-wallpapers-2023 keyboard-configuration keyutils libcrypt1 libssl-dev locate macchanger make man-db masscan medusa meson mimikatz mingw-w64-common mingw-w64-i686-dev mingw-w64-x86-64-dev mitmproxy nano ncrack neo4j neofetch net-tools network-manager nfs-common nmap nodejs npm open-vm-tools open-vm-tools-desktop openconnect openfortivpn kitty openjdk-11-jre openjdk-11-jre-headless openjdk-17-jre openjdk-17-jre-headless openvpn os-prober p7zip p7zip-full passwd php php8.2 php8.2-cli php8.2-common pngcheck powershell powershell-empire powersploit proxychains4 python2 python2.7 python3 radare2 remmina rlwrap rpcbind ruby socat software-properties-common software-properties-gtk sqlite3 sqlmap tcpdump tcpreplay unrar unzip vlan wafw00f wfuzz wget wireshark zsh zsh-autosuggestions zsh-common zsh-syntax-highlighting dconf-cli uuid-runtime fontconfig  -y

sudo apt-get update -y
sudo apt autoremove -y



echo "=========================================="
echo "=== Execute main2.sh ==="
echo "=========================================="
