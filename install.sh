#!/usr/bin/env bash

vimrc=$HOME/.vimrc
vim=$HOME/.vim
dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

echo "Going to install vim-config to " $HOME
read -p "Are you sure? " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
	echo "Exiting..."
	[[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1
fi

echo "Installing submodules"
$(git submodule update --init --recursive)

if [[ -L "$vimrc" ]]
then
	echo "Unlinking $vimrc"
	rm "$vimrc"
elif [[ -f $vimrc ]]
then
	echo "Backing up $vimrc"
	mv "$vimrc" "$vimrc.bak"
fi

if [[ -L $vim ]]
then
	echo "Unlinking $vim"
	rm "$vim"
elif [[ -f $vim ]]
then
	echo "Backing up $vim"
	mv "$vim" "$vim.bak"
fi

echo "Linking configuration"
$(ln -s "$dir/.vimrc" "$vimrc")
$(ln -s "$dir/.vim" "$vim")
