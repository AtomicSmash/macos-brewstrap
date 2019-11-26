
# macOS Brewstrap
macOS Brewstrap is a Bash script for installing various Homebrew packages and casks on a fresh install of macOS (mainly because I'm lazy and it just speeds up the setup process a bit). This script is built so that it can be run multiple times, or if the machine already contains some of the packages/casks that will be installed.

## What does it install?
If Homebrew does not exist on the current machine, it will install that first. Then it will install various packages and casks.

### Packages
 - Composer
 - Node

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
- zoom
- bear
- iterm2
- nvm

### Others
As part of installing Node/npm, this script will also globally install SASS via npm.

## Notes
There are other applications that cannot be installed via Homebrew as there are no casks available yet. These apps are:

 - Spark - Email App by Readdle (App Store)
 - SiteSucker (https://ricks-apps.com/osx/sitesucker/)
