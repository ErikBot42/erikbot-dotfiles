function runifexists  --description 'run a program, if exists'
	if command -v $argv[1] > /dev/null
		$argv
		return 0
	else
		return 1
	end
end
