#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

#if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
#	exec startx
#fi

source $HOME/.kube/completion.bash.inc

export QT_QPA_PLATFORMTHEME=gtk3
