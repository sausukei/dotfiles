#!/usr/bin/env bash
set -euo pipefail

DOTFILES="${DOTFILES:-$HOME/dotfiles}"

links=(
  "$HOME/.zshrc:$DOTFILES/.zshrc"
  "$HOME/.zprofile:$DOTFILES/.zprofile"
  "$HOME/.zshenv:$DOTFILES/.zshenv"
  "$HOME/.gitconfig:$DOTFILES/.gitconfig"
  "$HOME/.tmux.conf:$DOTFILES/.tmux.conf"
  "$HOME/.vimrc:$DOTFILES/.vimrc"
  "$HOME/.config/nvim:$DOTFILES/config/nvim"
  "$HOME/.config/starship.toml:$DOTFILES/config/starship.toml"
  "$HOME/.config/wezterm:$DOTFILES/config/wezterm"
  "$HOME/.config/ghostty:$DOTFILES/config/ghostty"
  "$HOME/.config/cmux:$DOTFILES/config/cmux"
)

mkdir -p "$HOME/.config"

for pair in "${links[@]}"; do
  target="${pair%%:*}"
  source="${pair#*:}"

  if [[ ! -e "$source" && ! -L "$source" ]]; then
    echo "skip: $source missing in dotfiles"
    continue
  fi

  if [[ -L "$target" && "$(readlink "$target")" == "$source" ]]; then
    echo "ok:   $target"
    continue
  fi

  if [[ -e "$target" || -L "$target" ]]; then
    backup="$target.bak.$(date +%Y%m%d-%H%M%S)"
    mv "$target" "$backup"
    echo "back: $target -> $backup"
  fi

  ln -s "$source" "$target"
  echo "link: $target -> $source"
done

if [[ ! -f "$HOME/.gitconfig.local" ]]; then
  cat > "$HOME/.gitconfig.local" <<'EOF'
[user]
	name = YOUR NAME
	email = your@email.example
EOF
  echo "wrote $HOME/.gitconfig.local — fill in your name/email"
fi
