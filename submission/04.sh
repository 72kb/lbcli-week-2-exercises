# List the current UTXOs in your wallet.
# Ensure a UTXO is present in case this runs on a fresh regtest instance
bitcoin-cli -regtest loadwallet "default" > /dev/null 2>&1 || true
FAUCET_ADDR=$(bitcoin-cli -regtest getnewaddress)
bitcoin-cli -regtest generatetoaddress 101 "$FAUCET_ADDR" > /dev/null
bitcoin-cli -regtest listunspent
