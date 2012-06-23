# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/Users/adrian/.rvm/gems/ruby-1.9.3-p0/bin:/Users/adrian/.rvm/gems/ruby-1.9.3-p0@global/bin:/Users/adrian/.rvm/rubies/ruby-1.9.3-p0/bin:/Users/adrian/.rvm/bin:/Users/adrian/.nvm/v0.6.6/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin
# staging
alias gogobot_stg='ssh -i ~/.pem/gogobot_sky_us_west.pem root@50.18.182.57'
alias gogobot_stg2='ssh -i ~/.pem/gogobot_sky_us_west.pem root@50.18.173.23'
alias gogobot_dev='ssh -i ~/.pem/gogobot_sky_us_west.pem root@50.18.251.140'

# production backend
alias gprod_be1='ssh -i ~/.pem/gogobot_prod.pem root@50.18.112.229'
alias gprod_be2='ssh -i ~/.pem/gogobot_prod.pem root@50.18.112.233'
alias gprod_be3='ssh -i ~/.pem/gogobot_prod.pem root@184.72.46.110'
alias gprod_be4='ssh -i ~/.pem/gogobot_prod.pem root@50.18.168.246'
alias gprod_be5='ssh -i ~/.pem/gogobot_prod.pem root@50.18.169.11'
alias gprod_be6='ssh -i ~/.pem/gogobot_prod.pem root@50.18.168.80'


# production frontend
alias gprod_fe1='ssh -i ~/.pem/gogobot_prod.pem root@50.18.112.107'
alias gprod_fe2='ssh -i ~/.pem/gogobot_prod.pem root@50.18.112.156'
alias gprod_fe3='ssh -i ~/.pem/gogobot_prod.pem root@50.18.112.164'
alias gprod_fe4='ssh -i ~/.pem/gogobot_prod.pem root@50.18.112.178'
alias gprod_fe5='ssh -i ~/.pem/gogobot_prod.pem root@50.18.253.160'
alias gprod_fe6='ssh -i ~/.pem/gogobot_prod.pem root@50.18.253.161'

# background workers (on demand basis) => import checkins for example
alias gprod_background='ssh -i ~/.pem/gogobot_prod.pem root@50.18.157.96'
alias gprod_retry='ssh -i ~/.pem/gogobot_prod.pem root@ec2-50-18-155-237.us-west-1.compute.amazonaws.com'
alias gprod_jenkins='ssh -i ~/.pem/gogobot_prod.pem root@50.18.153.174'
alias gprod_nfs='ssh -i ~/.pem/gogobot_prod.pem root@50.18.154.19'
alias gprod_backup='ssh -i ~/.pem/gogobot_prod.pem root@50.18.159.248'
  
# NFS
alias gprod_nfs_new='ssh -i ~/.pem/gogobot_prod.pem root@50.18.127.156'

# search index + push
alias gogobot_solr='ssh -i ~/.pem/gogobot_prod.pem root@ec2-50-18-114-211.us-west-1.compute.amazonaws.com'
alias gprod_push='ssh -i ~/.pem/gogobot_prod.pem root@ec2-50-18-104-205.us-west-1.compute.amazonaws.com'
alias gprod_push_slave='ssh -i ~/.pem/gogobot_prod.pem root@ec2-50-18-152-11.us-west-1.compute.amazonaws.com'
alias gprod_redis_checkins='ssh -i ~/.pem/gogobot_prod.pem root@50.18.252.59'

# Retry
alias gprod_retry='ssh -i ~/.pem/gogobot_prod.pem root@50.18.155.237'

# Membase
alias gprod_membase='ssh -i ~/.pem/gogobot_prod.pem root@50.18.174.139'
alias gprod_membase_2='ssh -i ~/.pem/gogobot_prod.pem root@50.18.174.145'

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
