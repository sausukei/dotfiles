

_brew_cache="$HOME/.cache/zsh/brew_shellenv.zsh"
if [[ ! -s $_brew_cache || /usr/local/bin/brew -nt $_brew_cache ]]; then
  mkdir -p "${_brew_cache:h}"
  /usr/local/bin/brew shellenv > "$_brew_cache"
fi
source "$_brew_cache"
unset _brew_cache

export PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH="$PATH:$HOME/development/flutter/bin"

