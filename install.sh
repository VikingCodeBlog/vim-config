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

echo "End!"
