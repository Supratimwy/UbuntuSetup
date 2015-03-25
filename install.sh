#!/bin/bash

clear

echo "The sub-folders will be moved to the home folder"


cp -avr android-ndk/ ~/

cp -avr android-studio/ ~/

cp -avr cm-android/ ~/

echo "The android sdk will be installed to the opt directory"

sudo cp -avr  android-sdk-linux /opt/

echo "Running the installation of the powerline fonts"

chmod a+x ./fonts/install.sh

echo|./fonts/install.sh

echo "Installing the zsh shell and setting it"

sudo apt-get install zsh

echo "Setting zsh as the default shell"

chsh -s /bin/zsh

echo "Installing the Oh-my-zsh framework"

echo|wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O - | sh

echo "copying the zshrc"

cd ~/tools

cp -f .zshrc ~/

echo "Changing git user config of the cm-android project"

cd ~/cm-android

git config user.name "Supratim Chakraborty"
git config user.email supratim.chakraborty@webyog.com

echo "Installation Complete"

