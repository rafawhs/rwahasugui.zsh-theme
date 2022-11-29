# rwahasugui.zsh-theme
# Repo: https://github.com/rafawhs/rwahasugui.zsh-theme

# Colors
c_base_1="$FG[005]"
c_base_2="$FG[013]"
c_base_3="$FG[014]"
c_time="$FG[007]"
c_git_1="$FG[010]"
c_git_2="$FG[009]"
c_path="$FG[247]"
c_user="$FG[001]"
c_misc="$FG[237]"
c_return="$FG[011]"
c_reset="%{$reset_color%}"

# settings
typeset +H return_code="%(?..${c_return}%? ↵%{$reset_color%})"


# primary prompt
PROMPT='${c_misc}--------------------------------------------------%{$reset_color%}
${c_base_1}┌%B${c_base_2}[${c_time}%T${c_base_2}]${c_base_1}$(git_prompt_info)${c_base_1}─%B[%b${c_path}%~${c_base_1}%B]%b
${c_base_3}└─╴%{$reset_color%}'

RPROMPT='${c_user}\ %{$reset_color%}'
RPROMPT='${return_code}'

# right prompt
(( $+functions[virtualenv_prompt_info] )) && RPROMPT+='$(virtualenv_prompt_info)'
RPROMPT+=' ${c_user}[%n]%{$reset_color%}'


# git settings
ZSH_THEME_GIT_PROMPT_PREFIX="─[%{\e[3m%}${c_git_1}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{\e[0m%}${c_git_2}*${c_base_1}%B]%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{\e[0m%}${c_base_1}%B]%{$reset_color%}"


# virtualenv settings
ZSH_THEME_VIRTUALENV_PREFIX="${c_git_1}%B[%{\e[3m%}"
ZSH_THEME_VIRTUALENV_SUFFIX="%{\e[0m%}]%{$reset_color%}"
