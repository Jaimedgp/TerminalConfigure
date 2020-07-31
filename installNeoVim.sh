#-----------------------------
#     Install NeoVim
#-----------------------------

sudo add-apt-repository ppa:neovim-ppa/unstable

sudo apt-get update
sudo apt-get install neovim

sudo apt install xclip

/opt/anaconda/bin/pip install neovim

# Upgrades
/opt/anaconda/bin/pip install --upgrade neovim

nvim -c ':PlugInstall' -c ':qall'


#-----------------------------
#     Install Nerd Fonts
#-----------------------------

git clone https://github.com/ryanoasis/nerd-fonts.git

source nerd-fonts/install.sh
rm -r nerd-fonts/


#-----------------------------
#     Install Notebooks
#-----------------------------

sudo pip install notedown
