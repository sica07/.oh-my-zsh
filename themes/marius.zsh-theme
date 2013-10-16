autoload -U add-zsh-hook
autoload -Uz vcs_info

zstyle ':vcs_info:*' actionformats \
       '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{3}|%F{1}%a%F{5}]%f '
zstyle ':vcs_info:*' formats '%F{2}%s%F{7}:%F{2}(%F{1}%b%F{2})%f '
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{11}%f'
zstyle ':vcs_info:*' stagedstr ' %F{green}●'
zstyle ':vcs_info:*' unstagedstr ' %F{yellow}●'
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{11}%r'
zstyle ':vcs_info:*' enable git svn

add-zsh-hook precmd prompt_vcs

ZSH_THEME_GIT_PROMPT_SHA_BEFORE=" %F{yellow}‹"
ZSH_THEME_GIT_PROMPT_SHA_AFTER="›"
ZSH_THEME_GIT_PROMPT_AHEAD="↑"
ZSH_THEME_GIT_PROMPT_BEHIND="↓"
ZSH_THEME_GIT_PROMPT_DIVERGED="↕"
########## GIT ###########
ZSH_THEME_GIT_PROMPT_PREFIX="‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$GIT_PROMPT_INFO%}›"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}✘%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}✔%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[blue]%}✚%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg_bold[blue]%}✹%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%}✖%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[blue]%}➜%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[blue]%}⚡%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[blue]%}✭%{$reset_color%}"
########## GIT ###########

prompt_vcs () {

    if [[ -z $(git ls-files --other --exclude-standard 2> /dev/null) ]] {
        zstyle ":vcs_info:*" formats " [%F{red}%b%c%u %$(git_prompt_status)%B %$(git_remote_status)%F{green}]"
    } else {
        zstyle ":vcs_info:*" formats " [%F{red}%b%c%u%B%F{red}● %$(git_prompt_status) %$(git_remote_status)%F{green}]"
    }

    vcs_info
}

setopt prompt_subst
function {
}
local ret_status="%(?:%{$fg[cyan]%}Ξ:%{$fg[red]%}%S↑%s%?) %f"

PROMPT='${ret_status}%{$fg[green]%}${PROMPT_HOST}%B%F{green}%c%B%F{green}${vcs_info_msg_0_} %$(git_prompt_short_sha) %F{blue}▶%f %F{yellow}  %{$reset_color%}'
