#!/usr/bin/bash
_tcssh_completion()
{
	COMPREPLY=($(compgen -W "$(awk '/^Host / {print $2}' ~/.ssh/config)" -- "${COMP_WORDS[-1]}"))
}
complete -F _tcssh_completion tcssh
