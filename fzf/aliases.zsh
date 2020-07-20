fh() {
  print -z $( ([ -n "$ZSH_NAME" ] && fc -l 1 || history) | fzf +s --tac | sed -E 's/ *[0-9]*\*? *//' | sed -E 's/\\/\\\\/g')
}

fgss() {
  print -z $( ([ -n "$ZSH_NAME" ] && git ls-files --modified) | fzf +s --tac | sed -E 's/ *[0-9]*\*? *//' | sed -E 's/\\/\\\\/g')
}

alias preview="fzf --preview 'bat --color \"always\" {}'"