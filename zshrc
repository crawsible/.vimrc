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


# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='ag -l'


# RUBY
eval "$(rbenv init -)"


# TERMINAL CONTROL
export EDITOR='nvim'
export LSCOLORS='ExFxBxDxCxegedabagacad'
export PS1=$'%{\e[4;31m%}%n%{\e[m%}@%{\e[0;33;45m%}%m%{\e[m%}%{\e[1;96m%} %~ %{\e[0;97m%}%#%{\e[m%} '
export TERM='xterm-256color'


# Z
source /usr/local/etc/profile.d/z.sh
