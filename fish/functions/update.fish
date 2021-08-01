# Defined in - @ line 1
function update -d "update packages"

	command -v apt && sudo apt update && sudo apt upgrade -y
	command -v flatpak && flatpak update -y
	command -v pacman && sudo pacman -Syu
	
	# vim-plug
	command -v nvim && nvim -c "PlugUpgrade" -c "PlugInstall" -c "PlugUpdate" -c "PlugClean" -c "qa"

	echo ""
	echo "Packages have been updated."
	echo ""
#  ls -lh $argv;
end
