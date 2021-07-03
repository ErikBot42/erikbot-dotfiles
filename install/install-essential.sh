#!/bin/bash

# Could be changed to any package manager
function install {
        echo
        echo "Installing ${@}";
        echo
        apt-get install $@
}

# stuff that i want in any cli
install vim neovim neofetch screen ncdu
