alias status_www="curl -N -I --user $HCLOG $HCIP/api/settings/info 2>/dev/null | head -n 1"
alias status_server="curl -N --user $HCLOG $HCIP/api/refreshStates 2>/dev/null | head -n 1 | cut -d',' -f1 | cut -d '{' -f2"
alias status_time="curl -N --user $HCLOG $HCIP/api/refreshStates 2>/dev/null | head -n 1 | cut -d',' -f3"
alias hcl_reboot='curl --request POST http://$HCIP/api/service/reboot --header "Authorization: Basic $HCTOKEN" --header "Content-Length:0"'
alias hcl_clear_energy='curl --request POST http://$HCIP/api/energy/clear --header "Authorization: Basic $HCTOKEN" --header "Content-Length:0"'