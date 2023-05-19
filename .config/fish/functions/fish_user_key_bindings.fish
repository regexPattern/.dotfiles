function fish_user_key_bindings
	fish_default_key_bindings
	fzf_key_bindings
end

function __history_previous_command
	switch (commandline -t)
	case "!"
		commandline -t $history[1]; commandline -f repaint
	case "*"
		commandline -i !
	end
end

function __history_previous_command_arguments
	switch (commandline -t)
	case "!"
		commandline -t ""
		commandline -f history-token-search-backward
	case "*"
		commandline -i '$'
	end
end

