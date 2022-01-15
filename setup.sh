#!/bin/bash

sudo apt update && sudo apt install python3-pip python3-venv xclip exa feroxbuster

# Setting up zshrc
rm ~/.zshrc && cp zshrc ~/.zshrc

# Making opt writable for me
sudo chown $(whoami):$(whoami) /opt && mkdir /opt/tools

# Installing oh my zsh
curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh

cp soundtrack.zsh-theme ~/.oh-my-zsh/themes/

# Installing ngrok & Setting up ngrok
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip ~/Downloads/ngrok.zip && unzip ngrok.zip && mv ngrok /opt/tools && /opt/tools/ngrok authtoken 1y0B7x8qTnxaprDllSzMKQ0SyzQ_7uudCLb3rmgwFiXjMj9cq

#Git installation
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

git clone https://github.com/openwall/john.git /opt/tools/John

git clone https://github.com/calebstewart/pwncat.git /opt/tools/pwncat

https://github.com/cddmp/enum4linux-ng.git /opt/tools/enum4linux-ng

# Installing pwncat on a virtual evn
python3 -m venv ~/.pwncat-env;
source ~/.pwncat-env/bin/activate;
python3 /opt/tools/pwncat/setup.py install;

deactivate

printf "Don't forget to press Prefix -> I to download tmux"
