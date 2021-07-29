# Defined in - @ line 1
# --wraps='fastfetch'
function fetch  --description 'run a fetch program'
	runifexists fastfetch $argv && return
	runifexists screenfetch $argv && return
	runifexists neofetch $argv && return
end
