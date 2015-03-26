#!/bin/bash

clear

echo "Downloading and running the installation of the powerline fonts"

git clone https://github.com/powerline/fonts.git

chmod a+x ./fonts/install.sh

echo|./fonts/install.sh

echo "Installing the zsh shell and setting it"

sudo apt-get install zsh

echo "Setting zsh as the default shell"

chsh -s /bin/zsh

echo "Installing the Oh-my-zsh framework"

echo|wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O - | sh

echo "copying the zshrc"

cp -f .zshrc ~/

echo "The android ndk will be downloaded to the home folder- ~/android-ndk"

wget http://dl.google.com/android/ndk/android-ndk-r10d-linux-x86_64.bin

chmod a+x android-ndk-r10d-linux-x86_64.bin

./android-ndk-r10d-linux-x86_64.bin

mv android-ndk-r10d/ android-ndk/

mv android-ndk/ ~/

chmod -R +x ~/android-ndk/

echo "The android studio will be downloaded to the home folder ~/android-studio"

wget https://dl.google.com/dl/android/studio/ide-zips/1.1.0/android-studio-ide-135.1740770-linux.zip

unzip android-studio*.zip

mv android-studio*/ android-studio/

mv android-studio/ ~/

chmod -R +x ~/android-studio/

echo "The android sdk will be installed to the opt directory"

wget http://dl.google.com/android/android-sdk_r24.1.2-linux.tgz

tar -xvzf *.tgz

mv android-sdk*/ android-sdk/

mv android-sdk/ /opt/

chmod -R +x /opt/android-sdk

echo "The cm-android folder is cloned from github into the home folder and the dependencies in the sdk downloaded"

git clone https://github.com/webyog/cm-android.git

chmod a+x cm-android/install.sh

./cm-android/install.sh

mv cm-android/ ~/

echo "Changing git user config of the cm-android project"

git config user.name "Supratim Chakraborty"
git config user.email supratim.chakraborty@webyog.com

echo "Installation Complete now run ~/android-studio/bin/studio.sh"

