# Custorm vi mode prompt
function fish_mode_prompt
#	echo -n "$fish_bind_mode "



switch $fish_bind_mode
case default
set_color --bold red
set vi_character 'N'
case insert
set_color --bold green
set vi_character 'I'
case replace_one
set_color --bold green
set vi_character 'R'
case visual
set_color --bold brmagenta
set vi_character 'V'
case '*'
set_color --bold red
set vi_character '?'
end


#echo "["
echo $vi_character
#echo "]"
echo " "

set_color normal


end




