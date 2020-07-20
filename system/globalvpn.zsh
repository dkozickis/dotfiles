dropvpn() {
  echo "Stopping GlobalProtect..."
  launchctl remove com.paloaltonetworks.gp.pangps
  launchctl remove com.paloaltonetworks.gp.pangpa
  echo "Done!"
}

convpn() {
  echo "Starting GlobalProtect..."
  launchctl load /Library/LaunchAgents/com.paloaltonetworks.gp.pangpa.plist
  launchctl load /Library/LaunchAgents/com.paloaltonetworks.gp.pangps.plist
  echo "Done!"
}