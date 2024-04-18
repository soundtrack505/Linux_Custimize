#!/bin/bash

sudo apt update && sudo apt install python3-pip python3-venv xclip eza rustscan feroxbuster terminator tmux curl wget python3-dev sqlmap wireshark \
       metasploit-framework neovim zsh-autosuggestions zsh-syntax-highlighting nmap john powersploit hashcat hydra impacket-scripts crackmapexec powershell-empire starkiller exploitdb sshutle -y


# Installing oh my zsh
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

# Setting up zshrc
rm ~/.zshrc && cp zshrc ~/.zshrc
cp tmux.conf ~/.tmux.conf

# Making opt writable for me
sudo chown $(whoami):$(whoami) /opt && mkdir /opt/tools

cp soundtrack.zsh-theme ~/.oh-my-zsh/themes/
cp shells /opt/tools

#Git installation
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

git clone https://github.com/openwall/john.git /opt/tools/John

git clone https://github.com/cddmp/enum4linux-ng.git /opt/tools/enum4linux-ng

git clone https://github.com/carlospolop/PEASS-ng.git /opt/tools/PEASS-ng

curl -L https://github.com/carlospolop/PEASS-ng/releases/latest/download/linpeas.sh -o /opt/tools/PEASS-ng/linPEAS/linpeas.sh

# Installing pwncat on a virtual evn
mkdir ~/.pwncat
python3 -m venv ~/.pwncat;
source ~/.pwncat/bin/activate;
pip3 install pwncat-cs

deactivate

printf "Don't forget to press Prefix -> I to download tmux"
