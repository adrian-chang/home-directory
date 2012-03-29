# Default text editor
export EDITOR="mvim"
# Node module locations
export NODE_PATH="/usr/local/lib/jsctags:/usr/local/lib/node"
# Where to look for files, look at brew bin first
export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin"
# Don't show hidden files
defaults write com.apple.Finder AppleShowAllFiles NO 
# source nvm
source ~/.nvm/nvm.sh
# if rvm exists, then source it 
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 
# aliases
alias dev_folder='cd ~/Development/projects/Gogobot-Rails3/www_rails/'
# use bundler when you can
export USE_BUNDLER=try
export BUNDLER_BLACKLIST="guard"
