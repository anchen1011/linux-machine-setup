# setup prompt
export PS1="%~%% "

# setup history
setopt SHARE_HISTORY
HISTSIZE=1000
if (( ! EUID )); then
  HISTFILE=~/.history_root
else
  HISTFILE=~/.history
fi
SAVEHIST=1000
