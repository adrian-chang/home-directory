-- Vim Setup Notes
1. To fix (gksudo:5045): Gtk-WARNING **: Unable to locate theme engine in module_path: "pixmap"
	apt-get install gtk2-engines-pixbuf
2. Install Exuberant CTags / DoctorJs (JSCtags) for Tagbar
	(JSCtags)
	Use brew for Exuberant ctags, built-in ctags, or install from source
	git clone --recursive git://github.com/mozilla/doctorjs.git (doctorjs
	uses submodule)
	Install latest node (<0.6)
	Use ~/.ctags for custom language
3. Install JSHint / Ruby for Syntastic
4. For Command-T (liter t), make sure Vim has +Ruby (vim --version)
5. For Vim-autocomplpop, it needs Vim-l9
6. For NerdTree, need to use :ReloadBookmark after startup to readbookmarks from ~/.NERDTreeBookmarks

-- Git Setup Notes
1. Need to fill out hidden fields
2. Need to select merge / diftool
3. Setup SSH keys on new machine
