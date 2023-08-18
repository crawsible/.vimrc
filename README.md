# installation instructions

install kitty
https://sw.kovidgoyal.net/kitty/quickstart/

install "Mononoki Nerd Font Mono"
https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Mononoki

on macos increase the maxfiles limit
copy LaunchDaemons files to /Library/LaunchDaemons as root (sudo)

get dependency and version mgmt tools up
- brew
  - https://brew.sh
  - add source command to ~/.zshenv
- chruby
  - brew install chruby
  - install latest ruby (ruby-install or something)
  - add source command to ~/.zshenv and switch to latest
- pyenv
  - brew install pyenv
  - follow github instructions to install to ~/.zshenv
  - install latest python
  - set pyenv global

install z
- brew install z

add the following symlinks
- ln -s kitty.conf to ~/.config/kitty/kitty.conf
- ln -s zshrc to ~/.zshrc
- ln -s vimrc to ~/.vimrc
- ln -s config_nvim to ~/.config/nvim
- ln -s gitconfig to ~/.gitconfig
- ln -s gitignore_global to ~/.gitignore_global

install command-line dependencies (maybe put these in plugin config someday)

for fzf.vim:
- brew install fzf

for telescope and neo-tree fuzzy search:
- brew install ripgrep
- brew install fd

for formatting and diagnostics:
- brew install stylua
- brew install lua-language-server (or whatever)
- brew install kotlin-language-server
- pip install beautysh
- npm install -g typescript typescript-language-server

