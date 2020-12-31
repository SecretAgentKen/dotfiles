#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1="\[$(tput setaf 15)\]\[$(tput setab 20)\] \u \[$(tput setab 8)\]\[$(tput setaf 20)\] \[$(tput setaf 15)\]\w \[$(tput sgr0)\]\[$(tput setaf 8)\] \[$(tput sgr0)\]"
BROWSER="google-chrome-stable"
PATH="$HOME/bin:$HOME/.npm-global/bin:$PATH"
