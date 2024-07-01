#!/bin/bash


# Making opt writable for me
sudo chown $(whoami):$(whoami) /opt && mkdir /opt/tools

#Git installation
sudo apt install git
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

git clone https://github.com/openwall/john.git /opt/tools/John

git clone https://github.com/cddmp/enum4linux-ng.git /opt/tools/enum4linux-ng

git clone https://github.com/carlospolop/PEASS-ng.git /opt/tools/PEASS-ng

curl -L https://github.com/carlospolop/PEASS-ng/releases/latest/download/linpeas.sh -o /opt/tools/PEASS-ng/linPEAS/linpeas.sh


sudo apt update && sudo apt install python2.7
curl https://bootstrap.pypa.io/pip/2.7/get-pip.py --output /tmp/get-pip.py
sudo python2.7 /tmp/get-pip.py

# Download Hack font
mkdir ~/.local/share/fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Hack.zip -O /tmp/Hack.zip


# Installing tools 
sudo apt update && sudo apt install python3-pip python3-venv xclip eza rustscan feroxbuster terminator tmux curl wget python3-dev sqlmap wireshark \
       metasploit-framework neovim zsh-autosuggestions zsh-syntax-highlighting nmap john powersploit hashcat hydra impacket-scripts crackmapexec powershell-empire starkiller exploitdb sshuttle -y

# Setting up zshrc
rm ~/.zshrc && cp zshrc ~/.zshrc
cp tmux.conf ~/.tmux.conf


cp soundtrack.zsh-theme ~/.oh-my-zsh/themes/


# Installing pwncat on a virtual evn
mkdir ~/.pwncat
python3 -m venv ~/.pwncat;
source ~/.pwncat/bin/activate;
pip3 install pwncat-cs

deactivate

# Installing oh my zsh
sudo apt install zsh zsh-autosuggestions zsh-syntax-highlighting
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

printf "Don't forget to press Prefix -> I to download tmux"
