#!/bin/sh

cd ~ 
git clone http://192.168.0.22/99122010/dotfiles && \
    cd dotfiles && ./sync.sh -f 
cd ~ && rm -rf dotfiles
# sudo locale-gen zh_TW zh_TW.UTF-8