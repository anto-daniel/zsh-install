#!/bin/bash

set -x

./zsh-install.sh
if [ $? -ne 0 ]; then echo zsh is not installed properly;exit 1;fi
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
echo "adding zsh-autosuggestion"
sed -i "/plugins/s/)/ zsh-autosuggestions)/" ~/.zshrc
source ~/.zshrc
