echo "installing node (via n-install)"
curl -L https://git.io/n-install | bash
echo "node --version: $(node --version)"
echo "npm --version: $(npm --version)"

echo "installing a few global npm packages"
npm install --global serve fkill-cli npm-quick-run \
semantic-release-cli npm-check-updates diff-so-fancy yarn \
ts-node 