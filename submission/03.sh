# Create a SegWit address.
# Add funds to the address.
# Return only the Address
ADDRESS=$(bitcoin-cli -regtest getnewaddress "" "bech32")
bitcoin-cli -regtest generatetoaddress 1 $ADDRESS > /dev/null
echo $ADDRESS
