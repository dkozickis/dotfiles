# Use `hub` as our git wrapper:
#   http://defunkt.github.com/hub/
hub_path=$(which hub)
if (( $+commands[hub] ))
then
  alias git=$hub_path
fi

gclc () {
  git log -$1 --pretty=%B --reverse | pbcopy
}

glacota () {
  git log -1 --pretty=%s --reverse | pbcopy
}

glacoha () {
  git log -1 --pretty=%h --reverse | pbcopy
}

gcbn () {
  git_current_branch | pbcopy
}

diverse () {
  node -e "console.log(process.argv[1].split(\"\").map(diverseSymbol => diverseSymbol === \" \" ? \" \" : \":alphabet-white-\" + diverseSymbol + \":\").join(\" \"))" $1 | pbcopy
}