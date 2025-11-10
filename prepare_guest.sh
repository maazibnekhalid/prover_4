#!/bin/bash

cd "$(dirname "$0")/../"

RISC0_USE_DOCKER=false cargo risczero build --manifest-path guest/Cargo.toml

