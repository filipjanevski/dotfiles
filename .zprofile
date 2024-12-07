# login shell settings
# Keep these in ~/.zprofile on macos because /etc/profile loads after ~/.zshenv

# config files
export XDG_CONFIG_HOME="$HOME/.config"

# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"
export HOMEBREW_NO_ENV_HINTS=true

# local bin
export PATH="$HOME/.local/bin:$PATH"

# go config
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"

# n node version manager
export N_PREFIX="$HOME/.n"
export PATH="$N_PREFIX/bin:$PATH"
