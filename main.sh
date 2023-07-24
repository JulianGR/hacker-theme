#!/bin/bash


# =========== Installing dependencies ===============
sudo apt-get update -y
sudo apt upgrade -y


sudo DEBIAN_FRONTEND=noninteractive apt install adwaita-icon-theme aircrack-ng amass apt-transport-https apt-utils arp-scan arping autoconf automake autopsy bash-completion bat binutils binwalk bison bloodhound build-essential burpsuite ca-certificates ca-certificates-java cadaver cargo cewl cherrytree cmake crackmapexec dirb dirbuster dnsrecon doxygen enum4linux evil-winrm exploitdb feroxbuster ffmpeg ffuf fonts-font-awesome fonts-hack fonts-lato fonts-open-sans fonts-powerline foremost git gnome-software gnome-software-common gnupg2 gobuster golang gophish gparted gpg gzip hashcat hexedit hping3 hydra imagemagick java-common javascript-common john jq kali-wallpapers-2022 kali-wallpapers-2023 keyboard-configuration keyutils libcrypt1 libssl-dev locate macchanger make man-db masscan medusa meson mimikatz mingw-w64-common mingw-w64-i686-dev mingw-w64-x86-64-dev mitmproxy nano ncrack neo4j neofetch net-tools network-manager nfs-common nmap nodejs npm open-vm-tools open-vm-tools-desktop openconnect openfortivpn openjdk-11-jre openjdk-11-jre-headless openjdk-17-jre openjdk-17-jre-headless openvpn os-prober p7zip p7zip-full passwd php php8.2 php8.2-cli php8.2-common pngcheck powershell powershell-empire powersploit proxychains4 python2 python2.7 python3 radare2 remmina rlwrap rpcbind ruby socat software-properties-common software-properties-gtk sqlite3 sqlmap tcpdump tcpreplay unrar unzip vlan wafw00f wfuzz wget wireshark zsh zsh-autosuggestions zsh-common zsh-syntax-highlighting -y

sudo apt-get update -y
sudo apt autoremove -y


# =========== Installing configs ===============
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
cd
curl https://pyenv.run | bash
pyenv install 2.7.18

# for using python2: pyenv global 2.7.18
# for using python3: pyenv global system



# =========== Installing gems ===============
sudo gem install evil-winrm colorls


# =========== Reducing time grub ===============
sudo sed -i "s/GRUB_TIMEOUT=5/GRUB_TIMEOUT=1/" /etc/default/grub
sudo update-grub



# =========== Visual studio code ===============
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" | sudo tee /etc/apt/sources.list.d/vscode.list
sudo apt update
sudo apt install code
rm microsoft.pgp





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

cd
sudo rm -r src/
rm LICENSE.md
rm readme.md

# =========== Updating files (for locate command) ===============
sudo updatedb

echo "=========================================="
echo "=== now proceed to manual installation ==="
echo "=========================================="



# =========== Fixing scrolling speed ===============
sudo apt install imwheel
echo "Set it to 2"
bash <(curl -s https://gist.githubusercontent.com/AshishKapoor/6f054e43578659b4525c47bf279099ba/raw/0b2ad8b67f02ebb01d99294b0ecb6feacc078f67/mousewheel.sh)
