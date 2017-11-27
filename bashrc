#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# ALIASES
alias bashrc='vim ~/.bashrc'
alias be='bundle exec'
alias c='clear'
alias ll='ls -aslhGF --color=auto'
alias lplog='lpass login --trust cojackson@pivotal.io'
alias ls='ls -GF --color=auto'
alias xcopy='xclip -sel clip'
alias xpaste='xclip -sel clip -o'
alias random='openssl rand -base64 32'


# CHRUBY
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh
chruby 'ruby-2.4.2'

# DIRENV -- http://direnv.net/
eval "$(direnv hook bash)"

# GOLANG
export GOPATH="${HOME}/go"
export PATH="/usr/local/go/bin:${PATH}:${GOPATH}/bin"
export GO15VENDOREXPERIMENT=1


# GOOGLE CLOUD SDK
source /opt/google-cloud-sdk/path.bash.inc


# TERMINAL CONTROL
export EDITOR='vim'
export LSCOLORS=ExFxBxDxCxegedabagacad
export PS1='\[\e[0;32m\][\u@\[\e[0;30;107m\]\h\[\e[0;32m\] \W]\$\[\e[m\] '
export TERM='xterm-256color'


# Z
source /usr/local/share/z/z.sh


# TAB COMPLETION
source ~/go/src/git.zx2c4.com/password-store/src/completion/pass.bash-completion
