# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/ilyanoskov/.fzf/bin* ]]; then
  export PATH="$PATH:/Users/ilyanoskov/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/ilyanoskov/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/Users/ilyanoskov/.fzf/shell/key-bindings.zsh"

