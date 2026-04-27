## What's new

- fixed the stratum reconnect loop caused by dev fee rotation
- reconnects automatically when the stratum pool goes idle or stops responding
- added `--password` support for custom stratum passwords and fixed diff
- fixed stable operation when running with `--devfund-percent 0`
- Linux x86_64 release with bundled CUDA and OpenCL plugins
- HiveOS custom miner package with wrapper scripts and stats integration
- aligned HiveOS package layout with common custom miner bundles
- added Ubuntu 22 Linux and HiveOS release assets

## Pool quick start

```bash
./keryx-miner \
  --keryxd-address stratum+tcp://eu.miningcrib.com:7212 \
  --mining-address keryx:YOUR_WALLET_ADDRESS \
  --threads 0
```

For fixed diff:

```bash
./keryx-miner \
  --keryxd-address stratum+tcp://eu.miningcrib.com:7213 \
  --mining-address keryx:YOUR_WALLET_ADDRESS \
  --password 'x;d=1000000000'
```

To disable the dev fee:

```bash
./keryx-miner \
  --keryxd-address stratum+tcp://eu.miningcrib.com:7212 \
  --mining-address keryx:YOUR_WALLET_ADDRESS \
  --devfund-percent 0
```
