#!/bin/bash

sudo apt update && sudo apt install python3-pip python3-venv xclip exa feroxbuster terminator tmux curl wget python3-dev sqlmap wireshark \
       metasploit-framework neovim zsh-autosuggestions zsh-syntax-highlighting nmap john powersploit hashcat hydra impacket-scripts crackmapexec powershell-empire exploitdb -y


# Installing oh my zsh
curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh | bash


# Setting up zshrc
rm ~/.zshrc && cp zshrc ~/.zshrc
cp tmux.conf ~/.tmux.conf

# Making opt writable for me
sudo chown $(whoami):$(whoami) /opt && mkdir /opt/tools

cp soundtrack.zsh-theme ~/.oh-my-zsh/themes/
cp shells /opt/tools

# Installing ngrok & Setting up ngrok
curl https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip -o /tmp/ngrok.zip && sleep 30 && unzip /tmp/ngrok.zip && mv /tmp/ngrok /opt/tools && chmod +x /opt/tools/ngrok && /opt/tools/ngrok authtoken 1y0B7x8qTnxaprDllSzMKQ0SyzQ_7uudCLb3rmgwFiXjMj9cq

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
