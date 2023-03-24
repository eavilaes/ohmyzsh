local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

PROMPT='$(virtualenv_prompt_info)%{[03m%}%{$fg[green]%}%c \
$(git_prompt_info)\
\
%{[03m%}%{$fg[cyan]%}($(kubectl config current-context 2>/dev/null | sed "s/arn:aws:eks:eu-west-1:[0-9]*:cluster\///")) \
%{$fg[red]%}%(!.#.»)%{$reset_color%} '
PROMPT2='%{$fg[red]%}\ %{$reset_color%}'
RPS1='%{$fg[blue]%}%~%{$reset_color%} ${return_code} '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$fg[yellow]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}*%{$fg[yellow]%}"
ZSH_THEME_VIRTUAL_ENV_PROMPT_PREFIX="%{$reset_color%}%{[03m%}%{$fg[blue]%}"
ZSH_THEME_VIRTUAL_ENV_PROMPT_SUFFIX="!%{$reset_color%} "
