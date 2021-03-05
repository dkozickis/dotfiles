alias cs="$PROJECTS/ScoutRFP/"
alias apro="BluetoothConnector --connect $APROMAC --notify"
alias swedofx="cd ~/Documents/Banking && mv ~/Downloads/statement.csv statement.csv && ofxstatement convert -t swedbankLV statement.csv statement.ofx"
alias dcuw="bin/scout up --no-webpack"

diverse () {
  node -e "console.log(process.argv[1].split(\"\").map(diverseSymbol => diverseSymbol === \" \" ? \" \" : \":alphabet-white-\" + diverseSymbol + \":\").join(\" \"))" $1 | pbcopy
}