# Tab autocomplete case insensitive
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=$HISTSIZE
setopt EXTENDED_HISTORY

# Colored terminal output
if [ -f "~/.config/lscolors.sh" ]; then
  source ~/.config/lscolors.sh
  export CLICOLOR=1
fi

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

# Add local bin
export PATH=$HOME/.local/bin:$PATH

# Go config
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH

# n node version manager
export N_PREFIX=$HOME/.n
export PATH=$N_PREFIX/bin:$PATH

# Prompt start
if type oh-my-posh &>/dev/null
then
  eval "$(oh-my-posh init zsh --config ~/.config/omp-prompt.yaml)"
fi
