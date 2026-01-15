# Path
export PATH="$PATH:/home/austin/.local/bin"

# Autocomplete
source /usr/share/zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# Fixes some issues with ssh and kitty
alias kssh="kitten ssh"

# Znap
[[ -r ~/zsh/znap/znap.zsh ]] ||
    git clone --depth 1 -- \
        https://github.com/marlonrichert/zsh-snap.git ~/zsh/znap
source ~/zsh/znap/znap.zsh

# Initialize 
(cat ~/.cache/wal/sequences &)
eval "$(atuin init zsh)"
eval "$(starship init zsh)"
