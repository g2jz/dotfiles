# Setup fzf
# ---------
if [[ ! "$PATH" == */home/g2jz/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/g2jz/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/g2jz/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/g2jz/.fzf/shell/key-bindings.zsh"
