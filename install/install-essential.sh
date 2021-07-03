#!/bin/bash

function install {
        echo "Installing ${@}";
        apt-get install $@
}

install vim neovim neofetch screen
