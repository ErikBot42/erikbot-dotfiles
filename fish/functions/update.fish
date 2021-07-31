# Defined in - @ line 1
function update -d "update packages"
	sudo apt update && sudo apt upgrade -y && flatpak update -y
#  ls -lh $argv;
end
