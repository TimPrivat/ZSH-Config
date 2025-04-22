ZSH_THEME="agnoster"

# ctrl+space to accept autosuggestion
bindkey '^ ' autosuggest-accept
# ctrl+ backspace to delete fullword
bindkey '^H' backward-kill-word
# pos1 to jump to beginning of line
bindkey '^[[H' beginning-of-line
# end  to jump to end of line
bindkey '^[[F' end-of-line


AUTO_SUGGESTIONS_DIR="$ZSH_CUSTOM/plugins/zsh-autosuggestions"
AUTO_SUGGESTIONS_GIT="https://github.com/zsh-users/zsh-autosuggestions.git"

SYNTAX_HIGHLIGHT_DIR="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting"
SYNTAX_HIGHLIGHT_GIT="https://github.com/zsh-users/zsh-syntax-highlighting.git"

AUTO_COMPLETE_DIR="$ZSH_CUSTOM/plugins/zsh-autocomplete"
AUTO_COMPLETE_GIT="https://github.com/marlonrichert/zsh-autocomplete.git"

AUTO_UPDATE_DIR="$ZSH_CUSTOM/plugins/autoupdate"
AUTO_UPDATE_GIT="https://github.com/TamCore/autoupdate-oh-my-zsh-plugins"

# check if plugins are installed, if not install them

# TODO convert to loop

if [ ! -d "$AUTO_SUGGESTIONS_DIR" ]; then
  echo "Installing AUTO_SUGGESTIONS"
  git clone $AUTO_SUGGESTIONS_GIT $AUTO_SUGGESTIONS_DIR
fi

if [ ! -d "$SYNTAX_HIGHLIGHT_DIR" ]; then
  echo "Installing SYNTAX_HIGHLIGHT"
  git clone $SYNTAX_HIGHLIGHT_GIT $SYNTAX_HIGHLIGHT_DIR
fi

if [ ! -d "$AUTO_COMPLETE_DIR" ]; then
  echo "Installing AUTO_COMPLETE"
  git clone $AUTO_COMPLETE_GIT $AUTO_COMPLETE_DIR
fi

if [ ! -d "$AUTO_UPDATE_DIR" ]; then
  echo "Installing AUTO_UPDATE"
  git clone $AUTO_UPDATE_GIT $AUTO_UPDATE_DIR
fi


plugins=(git zsh-autosuggestions zsh-syntax-highlighting fast-syntax-highlighting zsh-autocomplete autoupdate)
