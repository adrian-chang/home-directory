-- Development Enviroment Setup

-- Initial Startup
1. Register Product
 - Use work information	
2. Create Apple ID
 - Use work e-mail
3. Setup ITunes Payment
 - Remove CC when done with initial setup
4. Customize Finder
 - Show Path and Status (space)
 - Preferences -> Show more devices or locations as needed in the Finder or desktop
5. Customize Dock

-- Software Install
1. Install Dropbox
2. Install Google Chrome
3. Install Skype
4. Install iTerm 2.0
 - Unlimited scroll-back 
 - Use Ocean Colorscheme / solarized high constrast from Github
 - Slight Transparency
5. Install Xcode
 - Use app store or developer.apple.com/Downloads
 - Includes Dev tools (merge etc. /developer/utilites)
 - Move FileMerge to Dock
6. Install Apple Java Developer update
 - Use developer.apple.com
7. Install Homebrew
8. Install Macvim
 - Use brew
 - Symbolic link app to /applications
9. Install Google Voice Plugin
10. Install Evernote

-- Checkout Home Directory from Github
1. Use git init, then git remote add origin

-- Git Setup Notes
1. Need to fill out hidden fields
2. Need to select merge / difftool
3. Setup SSH keys on new machine

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
5. For Vim-autocomplpop, it needs Vim-l9
6. For NerdTree, need to use :ReloadBookmark after startup to readbookmarks from ~/.NERDTreeBookmarks
7. For :Ack, need to brew ack
8. For ruby-vim debugger, make sure signs \ hasclientserver + vim > 7
9. Ruby-Vim-Debugger, gem install ruby-debug-ide(19)
10. Rdb for Rails 3, :let g:ruby_debugger_default_script = 'script/rails server' (:Redebugger default)  
11. Rdb (IMPORTANT FOR OS X) let g:ruby_debugger_progname = 'mvim'
12. Rdb :RdbLog, :RdbEval, :RdbCond, :RdbStop

-- Development Enviroment Cleanup

1. Remove Dropbox
 - Remove selective sync first to remove files
