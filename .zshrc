# Tab autocomplete case insensitive
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=$HISTSIZE
setopt EXTENDED_HISTORY

# Aliases
if type eza &>/dev/null
then
  alias ls='eza'
  alias la='eza -la'
  alias ll='eza -l'
else
  alias ls='ls'
  alias la='ls -la'
  alias ll='ls -l'
fi

if type lazygit &>/dev/null
then
  alias lg='lazygit'
fi

# fzf and fzf-tab config
if type fzf &>/dev/null
then
  eval "$(fzf --zsh)"
  if [ -d ~/.config/fzf-tab ]; then
    source ~/.config/fzf-tab/fzf-tab.plugin.zsh
  fi
fi

# Brew zsh autocomplete
if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
  autoload -Uz compinit
  compinit
fi

# Prompt start
if type starship &>/dev/null
then
  eval "$(starship init zsh)"
fi
