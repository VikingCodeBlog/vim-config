#!/bin/bash
echo "Remove current VIM config"
rm -rf ~/.vim ~/.vimrc
cp -r .vimrc ~/.vimrc
echo "Install new VIM config"
cp -r .vim ~/.vim  
