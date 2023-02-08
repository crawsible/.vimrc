#
# ~/.zshrc
#

# ALIASES
alias c='clear'
alias ll='ls -aslhGF'
alias ls='ls -GF'
alias vim='nvim'


# AUTOLOADS
autoload zmv


# ASEPRITE
export PATH="${PATH}:/Users/c/Library/Application Support/Steam/steamapps/common/Aseprite/Aseprite.app/Contents/MacOS"


# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='ag --hidden --follow -l -g ""'


# Itch.io
if [ -d "${HOME}/Library/Application Support/itch/app/butler" ]; then
  export PATH="${PATH}:${HOME}/Library/Application Support/itch/apps/butler"
fi


# CHRUBY
if [ -d "/opt/homebrew/opt/chruby/" ]; then
  source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
  source /opt/homebrew/opt/chruby/share/chruby/auto.sh
fi


# TERMINAL CONTROL
export EDITOR='nvim'
export LSCOLORS='ExFxBxDxCxegedabagacad'
export PS1=$'%{\e[4;31m%}%n%{\e[m%}@%{\e[0;33;45m%}%m%{\e[m%}%{\e[1;96m%} %~ %{\e[0;97m%}%#%{\e[m%} '
export TERM='xterm-256color'


# UNITY TOOLS
editor_path="/Applications/Unity/Hub/Editor"
if [ -d "$editor_path" ]; then
  export PATH="${PATH}:${editor_path}/$(ls -v "${editor_path}" | tail -n 1)Unity.app/Contents/Tools/"
fi
editor_path=


# Z
source /opt/homebrew/etc/profile.d/z.sh
