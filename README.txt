-- Development Enviroment Setup

-- Initial Startup
1.	Register Product
	- Use work information	
2. 	Create Apple ID
	- Use work e-mail
3.	Setup ITunes Payment
	- Remove CC when done with initial setup
4.	Customize Finder
	- Show Path and Status (space)
	- Preferences -> Show more devices or locations as needed in the Finder or desktop
5.	Customize Dock

-- Software Install
1. 	Install Dropbox
2. 	Install Google Chrome
3. 	Install Skype
4. 	Install iTerm 2.0
	- Unlimited scroll-back 
	- Use Ocean Colorscheme from Github
	- Slight Transparency
5. Install Xcode
	- Use app store or developer.apple.com/downloads
6. Install Apple Java Developer update
	- Use developer.apple.com
7. Install Homebrew
8. Install Macvim
	- Use brew
	- Symbolic link app to /applications

-- Checkout Home Directory from Github
1.	Use git init, then git remote add origin

-- Vim Setup Notes
1. 	To fix (gksudo:5045): Gtk-WARNING **: Unable to locate theme engine in module_path: "pixmap"
	- apt-get install gtk2-engines-pixbuf
2.	Install Exuberant CTags / DoctorJs (JSCtags) for Tagbar
	- (JSCtags)
	- Use brew for Exuberant ctags
	- git clone --recursive git://github.com/mozilla/doctorjs.git (doctorjs) (uses submodule)
	- Install latest node (<0.6)
	- Use ~/.ctags for custom language
3. 	Install JSHint / Ruby for Syntastic
4. 	For Command-T (liter t), make sure Vim has +Ruby (vim --version)
5. 	For Vim-autocomplpop, it needs Vim-l9
6. 	For NerdTree, need to use :ReloadBookmark after startup to readbookmarks from ~/.NERDTreeBookmarks

-- Git Setup Notes
1. 	Need to fill out hidden fields
2. 	Need to select merge / diftool
3. 	Setup SSH keys on new machine


-- Development Enviroment Cleanup

1. 	Remove Dropbox
