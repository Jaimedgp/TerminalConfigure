sudo apt-get update
sudo apt-get upgrade


#-----------------------------
#     ORGANIZE CONFIG FILES
#-----------------------------

mv .config/* ~/.config/
mv .bash_aliases ~/
mv .tmux.conf ~/


#-----------------------------
#     Install Tmux
#-----------------------------

sudo apt-get update
sudo apt-get install tmux


#-----------------------------
#     Install git
#-----------------------------

sudo apt-get install git

git config --global user.name "Jaimedgp"
git config --global user.email jaime.diez.gp@gmail.com
git config --global core.editor nvim

# Configure ssh
ls -al ~/.ssh #check for existing ssh

while true; do
    read -p "Do you wish to create a new one? [y|n]" yn
    case $yn in
        [Yy]* ) ssh-keygen -t rsa -b 4096 -C "jaime.diez.gp@gmail.com"
                eval "$(ssh-agent -s)"
                ssh-add ~/.ssh/id_rsa
            break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done


#-----------------------------
#     Install Anaconda
#-----------------------------

wget -P ~/Downloads/ https://repo.anaconda.com/archive/Anaconda3-2020.02-Linux-x86_64.sh
chmod +x Anaconda3-2020.02-Linux-x86_64.sh

source Anaconda3-2020.02-Linux-x86_64.sh


#-----------------------------
#     Install NeoVim
#-----------------------------


#-----------------------------
#     Install Powerline
#-----------------------------

/opt/anaconda3/bin/pip install powerline-status

sudo apt-get install fonts-powerline


#-----------------------------
#     Install R
#-----------------------------

apt-get install r-base

$DIR="~/R/"
if [ -d "$DIR" ]; then
    mv "$DIR" "/opt/"
else
    mkdir "/opt/R/x86_64-pc-linux-gnu-library/3.6"
fi

Rscript install.R


#-----------------------------
#     Install Spotify
#-----------------------------

curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list

sudo apt-get update && sudo apt-get install spotify-client


#-----------------------------
#     Install SublimeText
#-----------------------------

sudo add-apt-repository ppa:webupd8team/sublime-text-3

sudo apt-get update

sudo apt-get install sublime-text-installer


#-----------------------------
#     Install LaTex
#-----------------------------

sudo apt-get install texlive
sudo apt-get install latexmk

# Spanish babel
sudo apt-get install texlive-lang-spanish

# Other packages like abstract.sty
sudo apt-get install texlive-latex-extra


#-----------------------------
#     Install Telegram
#-----------------------------

sudo add-apt-repository ppa:atareao/telegram

sudo apt-get update

sudo apt-get install telegram


#-----------------------------
#     Install Chromes
#-----------------------------

# Chromium
sudo apt-get install chromium-browser

# Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb
rm ./google-chrome-stable_current_amd64.deb


#-----------------------------
#     Install GParted
#-----------------------------

sudo apt-get install gparted


#-----------------------------
#     Install Gnome Tweaks
#-----------------------------

sudo apt install gnome-tweaks
sudo apt install chrome-gnome-shell


#-----------------------------
#     Install Commands
#-----------------------------

sudo apt-get install tree

sudo apt-get install mlocate
