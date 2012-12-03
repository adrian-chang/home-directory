# Default text editor
export EDITOR="mvim"
# Node module locations
export NODE_PATH="/usr/local/lib/jsctags:/usr/local/lib/node"
# Where to look for files, look at brew bin first
export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/Users/adrian/Development/bin/android-sdk-macosx/tools"
# Don't show hidden files
defaults write com.apple.Finder AppleShowAllFiles NO 
# source nvm
source ~/.nvm/nvm.sh
# if rvm exists, then source it 
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 
# aliases
alias dev_folder='cd ~/Development/projects/Gogobot-Rails3/www_rails/'
alias droid_folder='cd ~/Development/projects/GogoDroid/'
alias "ij=open -a /Applications/IntelliJ\ IDEA\ 11\ CE.app/"
# use bundler when you can
export USE_BUNDLER=try
export BUNDLER_BLACKLIST="guard"
export ANDROID_HOME="/Users/adrian/Development/bin/android-sdk-macosx"
export JAVA_HOME=$(/usr/libexec/java_home)
export GROOVY_HOME="/usr/local/Cellar/groovy/2.0.4/libexec"
export GRADLE_OPTS="-Dorg.gradle.daemon=true"
# fink
. /sw/bin/init.sh
