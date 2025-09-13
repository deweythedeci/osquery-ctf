curl -fsSL  https://pkg.osquery.io/deb/pubkey.gpg | sudo gpg --dearmor -o /etc/apt/keyrings/osquery.gpg
echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/osquery.gpg] https://pkg.osquery.io/deb deb main" | sudo tee /etc/apt/sources.list.d/osquery.list > /dev/null
sudo apt update
sudo apt install osquery -y