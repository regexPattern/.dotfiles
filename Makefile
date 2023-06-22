LOG_LEVEL = 1
XDG_CONFIG_HOME ?= $$HOME/.config

stow:
	stow -t $(XDG_CONFIG_HOME) .config -v $(LOG_LEVEL)

clean:
	stow -t $(XDG_CONFIG_HOME) -D .config -v $(LOG_LEVEL)
