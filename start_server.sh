#!/usr/bin/env bash
set -e


export RPC_URL="https://base-mainnet.g.alchemy.com/v2/C54i7fQfpURwvqTwV9Hys"
export MARKET_ADDRESS="0xfd152dadc5183870710fe54f939eae3ab9f0fe82"
export DOMAIN="154.57.209.191:8586"
export DATABASE_URL=postgres://postgres:postgres@localhost:5432/order_stream

cd "$(dirname "$0")/../server"

cargo run --release -- \
  --bind-addr 0.0.0.0:8586 \
  --rpc-url $RPC_URL \
  --boundless-market-address $MARKET_ADDRESS \
  --min-balance-raw "${MIN_BALANCE_RAW:-0}" \
  --domain $DOMAIN

