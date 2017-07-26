if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="green"; fi

PROMPT=$'%{$fg_bold[$NCOLOR]%}%n@%M %{$fg[blue]%}%D{[%H:%M:%S]} %{$reset_color%}%{$fg[white]%}[%5~]%{$reset_color%} $(git_prompt_info)\
%{$fg[blue]%}->%(?.. $fg_bold[red][%?])%{$fg_bold[blue]%} %#%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="]%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}*%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
