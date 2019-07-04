#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
BROWSER="google-chrome-stable"
PATH="$HOME/bin:$HOME/.npm-global/bin:$PATH"
