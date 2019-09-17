#!/usr/bin/env bash

operation=$1
validate() {
	grep -F -q -x "$operation" << EOF
zsh
tmux
EOF
}

zsh() {
	sudo usermod --shell $(which zsh) $USER
	cp zshrc $HOME/.zshrc
}

tmux() {
	cp tmux.conf $HOME/.tmux.conf
}

validate
if [ $? -eq 0 ]; then
	$operation
else
	printf "Invalid operation: $operation\nUsage: setup.sh zsh | tmux \n"
fi
