#set fish_function_path $fish_function_path "/usr/share/powerline/bindings/fish"
#source /usr/share/powerline/bindings/fish/powerline-setup.fish
#powerline-setup

# tmux
if status is-interactive
and not set -q TMUX
    exec tmux
end

set fish_greeting
set EDITOR nvim
#neofetch --config /home/erik/.config/neofetch/configQuick.conf
#fetch
