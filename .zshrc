# setup prompt
export PS1="%~%% "

# setup history
setopt SHARE_HISTORY
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward
autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
bindkey "^[[A" history-beginning-search-backward-end
HISTSIZE=1000
if (( ! EUID )); then
  HISTFILE=~/.zsh_history_root
else
  HISTFILE=~/.zsh_history
fi
SAVEHIST=1000
