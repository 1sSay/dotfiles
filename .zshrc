export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"
export LANG=en_US.UTF-8

ZSH_THEME="af-magic"

plugins=(
	git
	zsh-autosuggestions
	sudo
	web-search
	copyfile
	history
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
