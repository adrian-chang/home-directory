-- Development Enviroment Setup

-- Initial Startup
1. Register product to existing Apple ID

-- Software Install
1. Install pCloud
2. Install Brave
3. Install Divvy
3. Install Xcode
 - Use app store
 - Includes Dev tools (merge etc. /developer/utilites), should be included as part of XCode, command line tools also
   - https://developer.apple.com/downloads/index.action?name=for%20Xcode%20-#
4. Install Homebrew
5. Install iTerm 2.0
  - https://shyr.io/blog/iterm2-beautiful-customizations
  - SourceCodePro + Powerline + Awesome Font
  - Solarized Dark High Contrast
  - Slight Transparency
6. DataGrip (Optional)

-- Github (Optional)
1. Add access keys to Github

-- Brew
1. brew install wget
2. brew install httpie
3. brew install htop
4. brew install fish
5. brew install nvim
6. brew install asdf
7. brew install fzf
8. brew install ag
9. brew install rg
10. brew install fd
11. brew tap homebrew/cask-fonts && brew install --cask font-droid-sans-mono-nerd-font
12. Set font to droid
13. brew install starship

-- Fish
1. Install Oh My Fish (optional)

-- asdf
0. https://asdf-vm.com/guide/getting-started.html#community-supported-download-methods (Fix shim)
1. asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
2. asdf install nodejs 18.16.0
3. asdf global nodejs 18.16.0
3. asdf plugin-add java https://github.com/halcyon/asdf-java.git
4. asdf install java openjdk-20
5. asdf global java openjdk-20
6. asdf plugin-add python
7. asdf install python 3.11.3
8. asdf global python 3.11.3
9. brew install coreutils
10. asdf plugin-add golang https://github.com/kennyp/asdf-golang.git
11. asdf install golang 1.20.3
12. asdf global golang 1.20.3

-- nvim
1. mkdir ~/.config/nvim
2. cp ./nvim/*  ~/.config/nvim
3. Install vim-plug
4. :PlugInstall
5. :CocInstall coc-go coc-python coc-css coc-html coc-json coc-tsserver coc-java
