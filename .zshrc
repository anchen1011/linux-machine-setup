# setup prompt
export PS1="%~%% "

# setup history
setopt SHARE_HISTORY
HISTSIZE=1000
if (( ! EUID )); then
  HISTFILE=~/.zsh_history_root
else
  HISTFILE=~/.zsh_history
fi
SAVEHIST=1000
