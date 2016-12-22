#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# ALIASES
alias be='bundle exec'
alias c='clear'
alias cf-ruby='cf ssh -tt -c "export HOME=/home/vcap/app;source /home/vcap/app/.profile.d/ruby.sh;cd /home/vcap/app;/bin/bash"'
alias ll='ls -asl --color=auto'
alias ls='ls --color=auto'
alias vim='nvim'


# CHRUBY
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh
chruby ruby-2.3.3


# GOLANG
export GOPATH=/home/crawsible/gopath
export PATH="/usr/local/go/bin:${PATH}:${GOPATH}/bin"


# KEYBOARD
setxkbmap -option caps:escape


# TERMINAL CONTROL
export EDITOR='nvim'
PS1='[\u@\h \W]\$ '
TERM='xterm-256color'


# Z
source /usr/local/share/z/z.sh
