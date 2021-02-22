#!/usr/bin/env bash

# Bash script for installing Homebrew and any packages and casks on a fresh install of macOS

echo "Starting Brewstrap"

# If Homebrew is not installed on the system, it will be installed here
if test ! $(which brew); then
   echo "Homebrew not found. Installing Homebrew..."
   ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew packages
brew update

PACKAGES=(
   composer
   node
)

echo "Installing packages..."
brew install ${PACKAGES[@]}

echo "Removing out of date packages..."
brew cleanup

echo "Installing cask..."
brew install cask

echo "Installing Oh My Zsh..."
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Installing nvm..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash

echo "Installing lastest node..."
nvm install node
nvm use node

echo "Installing capistrano..."
sudo gem install capistrano

echo "Installing capistrano-composer..."
sudo gem install capistrano-composer

CASKS=(
   1password
   atom
   docker
   firefox
   google-chrome
   screaming-frog-seo-spider
   sequel-pro
   slack
   sourcetree
   fork
   spotify
   insomnia
   zoom
   iterm2
)

echo "Installing cask apps..."
brew install ${CASKS[@]}

echo "Installing global npm packages..."
npm install -g sass

echo "Brewstrap complete"
