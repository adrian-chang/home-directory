-- Development Enviroment Setup

-- Initial Startup
1. Register product to existing Apple ID
2. Customize Finder
 - Preferences
   - Show more devices or locations as needed in the Finder or desktop
   - Show filename extensions
 - View
   - Show Path and Status (space)
3. Customize Dock
4. Customize GMail
 - Turn on lab features
 - Set theme

-- Software Install
1. Install Dropbox
2. Install Copy
3. Install RecordIt
4. Install Google Chrome
5. Install Firefox
6. Install Skype
7. Install iTerm 2.0
 - Terminal
   - Unlimited scroll-back 
 - Colors
   - Use presets 
     - Ocean Color scheme / solarized high contrast from Github
 - Window 
   - Slight Transparency
   - New Window
     - 250 Columns
     - 50 Rows
     - Style 
 - Keys
   - System wide hotkey / zoom
 - General
   - Use Lion-style fullscreen windows off
8. Install Hiss
9. Install Google Voice Plugin
10. Install Evernote
11. Install Tunnelblick VPN
12. Install Sublime
13. Install Xcode
 - Use app store
 - Includes Dev tools (merge etc. /developer/utilites), should be included as part of XCode, command line tools also
   - https://developer.apple.com/downloads/index.action?name=for%20Xcode%20-#
 - Move FileMerge to Dock
14. Install Homebrew

-- ZSH
1. brew install zsh 
2. https://github.com/robbyrussell/oh-my-zsh
3. ys theme
4. plugins=(git brew bundler bower gem git-extras gradle jsontools last-working-dir mvn node npm osx pyenv python rails ruby rvm sublime web-search)

-- Java
1. Install from Oracle

-- WGet
1. brew install wget

-- HTTPie
1. brew install httpie

-- htop
1. brew install htop

-- Git Setup Notes
1. Need to fill out hidden fields
2. Need to select merge / difftool
3. Setup SSH keys on new machine

-- Checkout Home Directory from Github
1. Use git init, then git remote add origin

-- Ruby
1. Install rbenv (version first in zshrc, also make sure openssl with brew is installed)
 - https://github.com/sstephenson/rbenv
 - brew install ruby-build
2. rbenv install 2.2.0
3. rbenv global 2.2.0
4. rbenv bundler
 - https://github.com/carsomyr/rbenv-bundler
5. Ruby load path (1.9.2) dosen't scan current dir
6. Ruby 1.9, gems are loaded by default, no require rubygems to get single path gems
7. https://github.com/sstephenson/rbenv-gem-rehash

-- Node
1. Install Node Version Manager
 - https://github.com/creationix/nvm 
 - Source nvm to shell
2. nvm install v0.10.35
3. nvm use v0.10.35
4. nvm alias default v0.10.35
5. npm install -g node-inspector
6. npm install -g jshint
7. add the path correctly first for ~/.nvm

-- Python
1. Python version management
 - https://github.com/yyuu/pyenv#homebrew-on-mac-os-x
 - https://github.com/yyuu/pyenv-installer
 - https://github.com/yyuu/pyenv-virtualenv
 - https://github.com/yyuu/pyenv-pip-rehash
2. sudo easy_install pip
3. pip install flake8 (checker)

-- Ngnix
1. Install Ngnix using brew
  - Config file: /usr/local/etc

-- Hosts
1. /etc/hosts .....

-- Vim Setup Notes
1. To fix (gksudo:5045): Gtk-WARNING **: Unable to locate theme engine in module_path: "pixmap"
 - apt-get install gtk2-engines-pixbuf
2. Install Exuberant CTags / DoctorJs (JSCtags) for tagbar
 - Use brew for Exuberant ctags
 - git clone --recursive git://github.com/mozilla/doctorjs.git (doctorjs) (uses submodule) or git submodule init / update
 - Install latest node (<0.6)
 - Use ~/.ctags for custom language
3. Ensure JSHint (node) / Ruby / Python is installed for Syntastic
4. For Command-T (liter t), make sure Vim has +Ruby (vim --version)
 - Compile C Extension
5. For Vim-autocomplpop, it needs Vim-l9
6. For NerdTree, need to use :ReloadBookmark after startup to readbookmarks from ~/.NERDTreeBookmarks
7. For :Ack, need to brew ack
8. For ruby-vim debugger, make sure signs \ hasclientserver + vim > 7
9. Ruby-Vim-Debugger, gem install ruby-debug-ide(19)
10. Rdb for Rails 3, :let g:ruby_debugger_default_script = 'script/rails server' (:Redebugger default)  
11. Rdb (IMPORTANT FOR OS X) let g:ruby_debugger_progname = 'mvim'
12. Rdb :RdbLog, :RdbEval, :RdbCond, :RdbStop
13. *** install using vundle now ***

-- Development Enviroment Cleanup

1. Remove Dropbox
 - Remove selective sync first to remove files
