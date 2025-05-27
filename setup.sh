#!/bin/bash


# Making opt writable for me
sudo chown $(whoami):$(whoami) /opt && mkdir /opt/tools

#Git installation
sudo apt install git
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

git clone https://github.com/openwall/john.git /opt/tools/John

git clone https://github.com/cddmp/enum4linux-ng.git /opt/tools/enum4linux-ng

git clone https://github.com/RevoltSecurities/SubProber.git /opt/tools/SubProber

git clone https://github.com/p0dalirius/smbclient-ng.git /opt/tools/smbclient-ng

git clone https://github.com/carlospolop/PEASS-ng.git /opt/tools/PEASS-ng

git clone https://github.com/nicocha30/ligolo-ng.git /opt/tools/ligolo-ng

curl -L https://github.com/carlospolop/PEASS-ng/releases/latest/download/linpeas.sh -o /opt/tools/PEASS-ng/linPEAS/linpeas.sh


sudo apt update && sudo apt install python2.7 -y
curl https://bootstrap.pypa.io/pip/2.7/get-pip.py --output /tmp/get-pip.py
sudo python2.7 /tmp/get-pip.py

# Installing tools 
sudo apt update && sudo apt install python3-pip python3-venv python3-libtmux xclip eza feroxbuster terminator tmux curl wget python3-dev sqlmap wireshark \
       metasploit-framework neovim zsh-autosuggestions neovim zsh-syntax-highlighting nmap john powersploit hashcat hydra impacket-scripts crackmapexec powershell-empire starkiller exploitdb sshuttle -y

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

mkdir ~/.config/nvim/
cp nvim.init ~/.config/nvim/


# Setting up zshrc
rm ~/.zshrc && cp zshrc ~/.zshrc
cp tmux.conf ~/.tmux.conf

pip3 install certipy-ad

# Installing pwncat on a virtual evn
mkdir ~/.pwncat
python3 -m venv ~/.pwncat;
source ~/.pwncat/bin/activate;
pip3 install pwncat-cs

deactivate

# Installing oh my zsh
sudo apt install zsh zsh-autosuggestions zsh-syntax-highlighting
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
cp soundtrack.zsh-theme ~/.oh-my-zsh/themes/

# Download Hack font
mkdir ~/.local/share/fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Hack.zip -O ~/.local/share/fonts/Hack.zip
cd ~/.local/share/fonts
unzip ~/.local/share/fonts/Hack.zip
rm Hack.zip
cd ~

# install powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"

cp p10k.zsh ~/.p10k.zsh


printf "Open nvim and run :PlugInstall"
printf "Need to download rustscan https://github.com/bee-san/RustScan"
printf "Don't forget to press Prefix -> I to download tmux"
