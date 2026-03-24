# Create a SegWit address.
# Add funds to the address.
# Return only the Address
bitcoin-cli -regtest loadwallet "default" > /dev/null 2>&1
ADDRESS=$(bitcoin-cli -regtest getnewaddress "funding_addr" "bech32")
MINER_ADDR=$(bitcoin-cli -regtest getnewaddress "miner_addr")
bitcoin-cli -regtest generatetoaddress 101 "$MINER_ADDR" > /dev/null
# Set a manual fee rate to avoid fee estimation failure in this regtest environment
bitcoin-cli -regtest settxfee 0.0001 > /dev/null
bitcoin-cli -regtest sendtoaddress "$ADDRESS" 1 > /dev/null
echo $ADDRESS
