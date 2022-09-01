#!/bin/bash

echo "Gonna Install oh my zsh !!!"
sudo apt-get update && sudo apt-get -y install zsh wget direnv
if [ ! -f ~/.zshrc ]; then
	echo "# creating runtime config" > .zshrc
fi
sudo apt-get update && sudo apt-get -y install zsh wget
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sed -i "s/robbyrussell/mrtazz/g" ~/.zshrc
