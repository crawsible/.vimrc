#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# ALIASES
alias bashrc='vim ~/.bash_profile'
alias c='clear'
alias ll='ls -aslhGF'
alias ls='ls -GF'


# GOLANG
export GOPATH="${HOME}/go"
export PATH="${PATH}:${GOPATH}/bin"


# CHRUBY
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

chruby 'ruby-2.5'


# TERMINAL CONTROL
export EDITOR='vim'
export LSCOLORS=ExFxBxDxCxegedabagacad
export TERM='xterm-256color'
export GPG_TTY=$(tty)


# Z
source /usr/local/etc/profile.d/z.sh
