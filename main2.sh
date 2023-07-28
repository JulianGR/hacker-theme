#!/bin/zsh

# =========== Installing shell ===============

cd
cp /home/$USER/hacker-theme/tools/kitty.conf $HOME/.config/kitty/kitty.conf
cp /home/$USER/hacker-theme/tools/tab_bar.py $HOME/.config/kitty/tab_bar.py



cd
touch ~/.hushlogin

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


# =========== Updating files (for locate command) ===============
sudo updatedb


# =========== Fixing scrolling speed ===============
sudo apt install imwheel
echo "Set it to 1"
bash <(curl -s https://gist.githubusercontent.com/AshishKapoor/6f054e43578659b4525c47bf279099ba/raw/0b2ad8b67f02ebb01d99294b0ecb6feacc078f67/mousewheel.sh)




# =========== Installing color scheme ===============

cd 
git clone https://github.com/Gogh-Co/Gogh.git gogh
./gogh/installs/nord.sh

cd
sudo rm -r gogh/ hacker-theme/ Documents/ Music/ Pictures/ Public/ Templates/ Videos/

xfwm4-settings


echo "=========================================="
echo "=== now proceed to manual installation ==="
echo "=========================================="