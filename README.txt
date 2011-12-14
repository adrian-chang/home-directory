-- Vim Setup Notes
1. To fix (gksudo:5045): Gtk-WARNING **: Unable to locate theme engine in module_path: "pixmap"
	apt-get install gtk2-engines-pixbuf
2. Install Exuberant CTags / DoctorJs (JSCtags) for Tagbar
	(JSCtags)
	Use brew for Exuberant ctags, built-in ctags, or install from source
	git clone --recursive git://github.com/mozilla/doctorjs.git (doctorjs
	uses submodule)
	Install latest node (<0.6)
3. Install JSHint / Ruby for Syntastic
4. For Command-T (liter t), make sure Vim has +Ruby (vim --version)
5. For Vim-autocomplpop, it needs Vim-l9
