#!/bin/bash

set -x

./zsh-install.sh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
echo "adding zsh-autosuggestion"
sed -i "/plugins/s/)/ direnv zsh-autosuggestions)/" ~/.zshrc
source ~/.zshrc
