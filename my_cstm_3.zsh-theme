directory() {
   echo "%{$fg[magenta]%}%2~%{$reset_color%}"
}
current_time() {
   echo "%{$fg[cyan]%}%*%{$reset_color%}"
}

return_status() {
   echo "%(?..%{$fg[red]%}%? ↵%{$reset_color%})"
}

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[yellow]%}› %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}"

PROMPT='%B[$(current_time)] $(directory) $(git_prompt_info)%b🎲 '
RPROMPT='$(return_status)'
