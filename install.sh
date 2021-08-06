#!/bin/bash

CONFIG_DIR="$HOME/.config"

# Check if config dir exist
if [ ! -d "$CONFIG_DIR" ]; then
  mkdir $CONFIG_DIR
fi

echo "Remove current VIM config"
# Your configuration could be in the root directory or it could be in the .config
rm -rf ~/.vim ~/.vimrc
rm -rf $CONFIG_DIR/.vim $CONFIG_DIR/.vimrc

echo "Installing config files in ${CONFIG_DIR}..."
cp .vimrc $CONFIG_DIR/.vimrc
cp -r .vim $CONFIG_DIR

echo "Create symbolic link from ~/.vimrc to $CONFIG_DIR/.vimrc"
ln -s $CONFIG_DIR/.vimrc $HOME/.vimrc

echo "Create symbolic link from ~/.vim to $CONFIG_DIR/.vim"
ln -s $CONFIG_DIR/.vim $HOME/.vim

echo "Install Mjolnir color theme"
wget https://raw.githubusercontent.com/VikingCodeBlog/mjolnir-for-vim/main/berserker.vim
mkdir -p ~/.vim/colors/
mv berserker.vim $HOME/.vim/colors/berserker.vim

echo "Prepare plugins folders"
mkdir -p $HOME/.vim/pack/vendor/start/
mkdir -p $HOME/.vim/pack/plugins/start

cd $HOME/.vim/pack/vendor/start/
echo "Install Nerdtree"
# You can use git
# git clone https://github.com/preservim/nerdtree.git ~/.vim/pack/vendor/start/nerdtree
# or
# git submodule add https://github.com/scrooloose/nerdtree ~/.vim/pack/plugins/start/nerdtree

wget https://github.com/preservim/nerdtree/archive/master.tar.gz
tar -xvf master.tar.gz
rm master.tar.gz
mv ./nerdtree-master ./nerdtree

cd $HOME/.vim/pack/vendor/start/
echo "Install Lightline"
# You can use git
# git clone https://github.com/itchyny/lightline.vim ~/.vim/pack/plugins/start/lightline

wget https://github.com/itchyny/lightline.vim/archive/master.tar.gz
tar -xvf master.tar.gz
rm master.tar.gz
mv ./lightline.vim-master/ ./lightline

echo "End!"
