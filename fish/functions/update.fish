# Defined in - @ line 1
function update -d "update with apt and flatpak"
	sudo apt update && sudo apt upgrade -y && flatpak update -y
#  ls -lh $argv;
end
