#! /bin/bash

sudo apt update && sudo apt full-upgrade -y

echo $'\n'"Installing tmux"
sudo apt install tmux -y
echo $'\n'

echo $'\n'"Installing git"
sudo apt install git -y
echo $'\n'

echo $'\n'"Installing vscode"
sudo apt install vscode -y
echo $'\n'"Holding vscode"
sudo apt-mark hold code

echo $'\n'"Installing jekyll blog tools"
echo $'\n'"Installing ruby"
sudo apt-get install ruby-full build-essential zlib1g-dev -y
echo $'\n'"Config rubygem to bashrc"
echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
echo $'\n'"Install jekyll and bundler"
sudo gem install jekyll bundler

sudo apt install nodejs -y && sudo apt update && sudo apt full-upgrade -y
sudo apt install npm -y
sudo npm install -g yarn -y
sudo npm install -g gulp -y