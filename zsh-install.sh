#!/bin/bash

echo "Gonna Install oh my zsh !!!"
<<<<<<< HEAD
sudo apt-get update && sudo apt-get -y install zsh wget direnv
if [ ! -f ~/.zshrc ]; then
	echo "# creating runtime config" > .zshrc
fi
=======
sudo apt-get update && sudo apt-get -y install zsh wget
>>>>>>> parent of ccd8277... adding direnv plugin
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sed -i "s/robbyrussell/mrtazz/g" ~/.zshrc
