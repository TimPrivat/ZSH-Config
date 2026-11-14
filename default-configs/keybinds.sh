# ctrl+space to accept autosuggestion
bindkey '^ ' autosuggest-accept
# ctrl+ backspace to delete fullword
bindkey '^H' backward-kill-word
# pos1 to jump to beginning of line
bindkey '^[[H' beginning-of-line
# end  to jump to end of line
bindkey '^[[F' end-of-line
# shift + pos1 select everything to start
bindkey -M emacs '^[[1;2H' edit-select::beginning-of-line
# shift + end select everything to end
bindkey -M emacs '^[[1;2F' edit-select::end-of-line
