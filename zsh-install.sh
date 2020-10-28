#!/bin/bash

echo "Gonna Install oh my zsh !!!"
sudo apt-get update && sudo apt-get -y install zsh wget
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sed -i "s/robbyrussell/mrtazz/g" ~/.zshrc

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
echo "adding zsh-autosuggestion"
sed -i "/plugins/s/)/ zsh-autosuggestions)/" ~/.zshrc
source ~/.zshrc
