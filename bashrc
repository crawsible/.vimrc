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
chruby 'ruby-2.5.1'

# DIRENV -- http://direnv.net/
eval "$(direnv hook bash)"

# GOLANG
export GOPATH="${HOME}/go"
export PATH="${PATH}:${GOPATH}/bin"


# GOOGLE CLOUD SDK
source /usr/share/google-cloud-sdk/completion.bash.inc


# TAB COMPLETION
source ~/go/src/git.zx2c4.com/password-store/src/completion/pass.bash-completion


# TERMINAL CONTROL
export EDITOR='vim'
export LSCOLORS=ExFxBxDxCxegedabagacad
export TERM='xterm-256color'


# Z
source /usr/local/share/z/z.sh
