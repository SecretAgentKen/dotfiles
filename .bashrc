#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias mpv-drc='mpv --af="acompressor=ratio=4,loudnorm"'
BROWSER="google-chrome-stable"
PATH="$HOME/bin:$HOME/.npm-global/bin:$PATH:$HOME/.local/bin"
