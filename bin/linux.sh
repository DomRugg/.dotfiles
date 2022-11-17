#!/bin/bash

#checks if operating system is linux, if not sending error message to linuxsetup.log and using exit command.
if [ 'uname'!='Linux' ]; then
	echo "Invalid Opporating System" >> linuxsetup.log
	exit
fi

#Creates the .TRASH directory in home directory
mkdir ~/.TRASH

#Checks if .vimrc exists in home directory, if it does it changes its name to .bup_vimrc and dumps message to linuxsetup.log.
if [-f ~/.vimrc ]; then
	mv ~/.vimrc ~/.bup_vimrc
	echo "Current .vimrc file was changed to .bup_vimrc" >> linuxsetup.log
fi

#Overwrites the contents of vimrc file to .vimrc
cat /etc/vimrc > ~/.vimrc

#Adds statment to end of .bashrc file
echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc

