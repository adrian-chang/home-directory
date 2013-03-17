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
2. Install Google Chrome
3. Install Skype
4. Install iTerm 2.0
 - Terminal
   - Unlimited scroll-back 
 - Colors
   - Use presents 
     - Ocean Colorscheme / solarized high constrast from Github
 - Window 
   - Slight Transparency
   - New Window
     - 250 Columns
     - 50 Rows
 - General
   - Command zsh
   - Fun Addons
     - https://github.com/robbyrussell/oh-my-zsh
5. Install Hiss
6. Install Xcode
 - Use app store or developer.apple.com/Downloads
 - Includes Dev tools (merge etc. /developer/utilites)
 - Move FileMerge to Dock
7. Install Homebrew
8. Install Macvim
 - Use brew
 - Symbolic link app to /applications
 - http://clearfix.be/2012/08/05/fix-mountain-lion-10-8-python-ioerror-pyconfig-h-error/
9. Install Google Voice Plugin
10. Install Evernote
11. Install Tunnelblick VPN
12. Install Adium

-- Checkout Home Directory from Github
1. Use git init, then git remote add origin

-- Git Setup Notes
1. Need to fill out hidden fields
2. Need to select merge / difftool
3. Setup SSH keys on new machine

-- WGet
1. brew install wget

-- htop
1. brew install htop

-- Ngnix
1. Install Ngnix using brew

-- Hosts
1. /etc/hosts .....

-- Node
1. Install Node Version Manager
 - https://github.com/creationix/nvm 
 - Source nvm to shell
2. nvm install v0.6.6
3. nvm use v0.6.6
4. npm install -g node-inspector
5. npm install -g jshint
6. nvm alias default 0.6.6

-- Ruby
1. Install rvm
 - Single user installation
 - Source RVM to profile
 - rvm list known
2. rvm install 1.9.2
3. rvm use --default 1.9.2
4. Create gemset
5. Update gemset 
 - rvm [target] do gem update or gem update
6. Ruby load path (1.9.2) dosen't scan current dir
7. Ruby 1.9, gems are loaded by default, no require rubygems to get single path gems
8. rubygems-bundler to avoid bundle exec 

-- Vim Setup Notes
1. To fix (gksudo:5045): Gtk-WARNING **: Unable to locate theme engine in module_path: "pixmap"
 - apt-get install gtk2-engines-pixbuf
2. Install Exuberant CTags / DoctorJs (JSCtags) for tagbar
 - Use brew for Exuberant ctags
 - git clone --recursive git://github.com/mozilla/doctorjs.git (doctorjs) (uses submodule) or git submodule init / update
 - Install latest node (<0.6)
 - Use ~/.ctags for custom language
3. Ensure JSHint (node) / Ruby is installed for Syntastic
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

-- Growl
1. Use Growl-Fork
2. Growl_Notify Gem

-- Development Enviroment Cleanup

1. Remove Dropbox
 - Remove selective sync first to remove files
