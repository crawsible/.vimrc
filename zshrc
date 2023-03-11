#
# ~/.zshrc
#

# ALIASES
alias c='clear'
alias ll='ls -aslhGF'
alias ls='ls -GF'
alias vim='nvim'
alias ruby-http='ruby -run -e httpd -- . -p 3000'


# AUTOLOADS
autoload zmv


# ASEPRITE
export PATH="${PATH}:/Users/c/Library/Application Support/Steam/steamapps/common/Aseprite/Aseprite.app/Contents/MacOS"


# FZF
if [ -f ~/.fzf.zsh ]; then
    source ~/.fzf.zsh
    export FZF_DEFAULT_COMMAND='ag --hidden --follow -l -g ""'
fi


# Itch.io
if [ -d "${HOME}/Library/Application Support/itch/app/butler" ]; then
    export PATH="${PATH}:${HOME}/Library/Application Support/itch/apps/butler"
fi


# TERMINAL CONTROL
export EDITOR='nvim'
export LSCOLORS='ExFxBxDxCxegedabagacad'

setopt PROMPT_SUBST
export PS1=$'%-120(l#%{\e[1;3;32m%}%n[$(git config user.name | awk \'{print $1}\')]%{\e[m%}@%{\e[0;97;100m%}%m%{\e[m%}#@):%{\e[1;96m%}%-100(l#%~#./%1d)%{\e[0;97m%}%#%{\e[m%} '


# UNITY TOOLS
editor_path="/Applications/Unity/Hub/Editor"
if [ -d "$editor_path" ]; then
    export PATH="${PATH}:${editor_path}/$(ls -v "${editor_path}" | tail -n 1)Unity.app/Contents/Tools/"
fi
editor_path=


# Z
source /opt/homebrew/etc/profile.d/z.sh
