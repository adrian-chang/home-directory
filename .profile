# Default text editor
export EDITOR="mvim"
# Node module locations
export NODE_PATH="/usr/local/lib/jsctags:/usr/local/lib/node"
# Where to look for files, look at brew bin first
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="$PATH:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
# Don't show hidden files
defaults write com.apple.Finder AppleShowAllFiles NO 
# source nvm
source ~/.nvm/nvm.sh
source ~/.bashrc
# aliases
alias dev='cd ~/Development/projects/'
alias dev_server='ssh onnes.magneto.me'
alias stg_server='ssh faraday.magneto.me'
alias marketing_server='ssh ampere.magneto.me'
alias voyager='ssh voyager-back'
alias viking='ssh viking-back'
alias mariner='ssh mariner-back'
alias gallieo='ssh gallieo-back'
export JAVA_HOME=$(/usr/libexec/java_home)
export NODE_PATH=/usr/local/lib/jsctags/:$NODE_PATH
export NODE_PATH=/usr/local/lib/jsctags/:$NODE_PATH
export GRADLE_HOME=/usr/local/bin
# python version
[[ -s "$HOME/.pythonbrew/etc/bashrc" ]] && source "$HOME/.pythonbrew/etc/bashrc"
