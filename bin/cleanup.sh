#!/bin/bash

#Removes .vimrc file in home directory
rm -f ~/.vimrc

#Remove the this line from .bashrc file
sed -i 's/\bsource ∼\/.dotfiles\/bashrc custom\b/ /g' ~/.bashrc

#Remove the .TRASH directory in home directory
rm -rf ~/.TRASH
