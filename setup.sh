#!/usr/bin/env bash

operation=$1
validate() {
	grep -F -q -x "$operation" << EOF
setup_zsh
setup_i3
EOF
}

setup_zsh() {
	sudo usermod --shell $(which zsh) $USER
}

validate
if [ $? -eq 0 ]; then
	$operation
else
	printf "Invalid operation: $operation\nUsage: setup.sh setup_zsh | setup_i3\n"
fi
