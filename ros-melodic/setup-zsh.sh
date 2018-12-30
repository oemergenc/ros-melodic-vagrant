#!/usr/bin/env bash

git clone git://github.com/robbyrussell/oh-my-zsh.git /home/vagrant/.oh-my-zsh
cp /home/vagrant/.oh-my-zsh/templates/zshrc.zsh-template /home/vagrant/.zshrc
#make agnoster new default theme
sed -i -- 's/="robbyrussell"/="agnoster"/g' /home/vagrant/.zshrc
