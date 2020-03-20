
# macOS Brewstrap
macOS Brewstrap is a Bash script for installing various Homebrew packages and casks on a fresh install of macOS

This script is built so that it can be run multiple times, or if the machine already contains some of the packages/casks that will be installed.

## Running script

Clone down this project to anywhere on your machine. Navigate inside the project and then run:

```
./macos-brewstrap.sh
```

## What does it install?
If Homebrew does not exist on the current machine, it will install that first. Then it will install various packages and casks.

### Packages
 - Composer
 - Node
 - Oh My Zsh
 - NVM
 - Capistrano
 - Capistrano-composer

### Casks
- 1password
- atom
- docker
- firefox
- google-chrome
- screaming-frog-seo-spider
- sequel-pro
- slack
- sourcetree
- fork
- spotify
- insomnia
- zoomus
- iterm2

