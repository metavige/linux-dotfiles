#!/bin/sh

cd ~ 
git clone https://github.com/metavige/linux-dotfiles.git dotfiles && \
    cd dotfiles && \
    rsync --exclude ".git/" --exclude ".DS_Store" --exclude "install.sh" \
      --exclude "README.md" --exclude "LICENSE-MIT.txt" -avh --no-perms . ~;
cd ~

source ~/.bash_profile;
cd ~ && rm -rf dotfiles
# sudo locale-gen zh_TW zh_TW.UTF-8