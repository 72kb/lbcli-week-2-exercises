# Create a SegWit address.
# Add funds to the address.
# Return only the Address
ADDRESS=$(bitcoin-cli -regtest getnewaddress "" "bech32")
MINER=$(bitcoin-cli -regtest getnewaddress)
bitcoin-cli -regtest generatetoaddress 101 "$MINER" > /dev/null
bitcoin-cli -regtest sendtoaddress "$ADDRESS" 1 > /dev/null
echo $ADDRESS
