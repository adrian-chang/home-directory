-- Development Enviroment Setup

-- Initial Startup
1. Register product to existing Apple ID

-- Software Install
1. Install pCloud
2. Install Brave
3. Install Divvy
4. Install Notion
5. Install Xcode
 - Use app store
 - Includes Dev tools (merge etc. /developer/utilites), should be included as part of XCode, command line tools also
   - https://developer.apple.com/downloads/index.action?name=for%20Xcode%20-#
6. Install Homebrew
7. Install iTerm 2.0
  - https://shyr.io/blog/iterm2-beautiful-customizations
  - SourceCodePro + Powerline + Awesome Font
  - Solarized Dark High Contrast
  - Slight Transparency
8. Add access keys to Github

-- Fish
1. brew install wget
1. brew install httpie
1. brew install htop

-- Java


1. Install from Oracle

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
8. pry tool (gem install pry)

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
14. Install Syntax Checkers - https://github.com/jaxbot/syntastic-react

-- Development Enviroment Cleanup

1. Remove Dropbox
 - Remove selective sync first to remove files
