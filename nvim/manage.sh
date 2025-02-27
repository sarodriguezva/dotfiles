#!/bin/bash

source "$HOME/.dotfiles/functions.sh"

PROMPT="::neovim-BOOTSTRAP::"

case "$1" in
setup)
	confirm "Do you want to setup neovim?" "Y" || abort "Aborting..."
	install_package "neovim" || abort "Failed to install neovim"

	check_path_link "$HOME/.config/nvim/init.lua" "$HOME/.dotfiles/nvim/init.lua"
	check_path_link "$HOME/.config/nvim/lua" "$HOME/.dotfiles/nvim/lua"

	success "Setup correctly"
	;;
remove)
	if [[ -d $HOME/.config/nvim/ ]]; then
		confirm "Do you want to remove $HOME/.config/nvim/?" "Y" || abort "Aborting..."
		rm -rf "$HOME/.config/nvim/" || abort "Failed to remove $HOME/.config/nvim/ folder"
		success "Removed correctly"
	fi
	;;
*) abort "Usage: $0 {setup|remove}" ;;
esac
