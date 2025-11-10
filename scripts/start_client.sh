#!/usr/bin/env bash
set -euo pipefail

# --------------------------
# Configuration
# --------------------------

# Your locally built or hosted guest image
export IMAGE_URL="http://154.57.209.191/guest.bin"

# The exact SHA-256 digest of that file
export EXPECTED_DIGEST="51b5b1c2e173e083b2b8d8dfa23c894c9466119323686e3840c39f83f1b60e2a"

# Boundless order-stream server
export ORDER_STREAM_URL="http://127.0.0.1:8586"

# Ethereum RPC node
export RPC_URL="https://base-mainnet.g.alchemy.com/v2/C54i7fQfpURwvqTwV9Hys"

# Deployed Boundless Market contract
export BOUNDLESS_MARKET_ADDRESS="0xfd152dadc5183870710fe54f939eae3ab9f0fe82"

# Requestor private key (example placeholder — replace with yours)
export PRIVATE_KEY="0xfbaacb56e12b97c23c089f08e91c522fd77d84f689295552eda441a808e4e638"

# Guest input for Fibonacci (or whatever your program expects)
export FIB_INPUT="40"

# Logging
export RUST_LOG="info"

# --------------------------
# Run client
# --------------------------

cd "$(dirname "$0")/../client"
echo "🚀 Launching off-chain client..."
cargo run --release

