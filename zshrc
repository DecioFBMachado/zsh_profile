source ~/.zsh_profile

autoload -Uz vcs_info
precmd() {
  vcs_info
}
setopt prompt_subst

GREEN='%F{green}'
RESET='%f'

PROMPT='%n@%m %1~ ${GREEN}${vcs_info_msg_0_}${RESET}%# '

zstyle ':vcs_info:git:*' formats '%r(%b)'
zstyle ':vcs_info:git:*' actionformats '(%r|%b|%a)'

