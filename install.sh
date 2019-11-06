#!/bin/sh

cd ~ 
git clone http://192.168.0.22/99122010/dotfiles.git && \
    cd dotfiles && \
    rsync --exclude ".git/" --exclude ".DS_Store" --exclude "install.sh" \
      --exclude "README.md" --exclude "LICENSE-MIT.txt" -avh --no-perms . ~;
    source ~/.bash_profile;
 
cd ~ && rm -rf dotfiles
# sudo locale-gen zh_TW zh_TW.UTF-8