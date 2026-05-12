## What's new

- version bump to `v0.21`
- fixed HiveOS startup failure caused by incompatible glibc requirement (`GLIBC_2.39`)
- Linux/HiveOS binaries are now built against an Ubuntu 22 (glibc 2.35) baseline
- simplified HiveOS packaging to one recommended package:
  - `mc-miner-v0.21-linux-hiveos.tar.gz`
- version bump to `v0.20`
- HiveOS custom miner package fixed:
  - includes `h-manifest.conf`, `h-config.sh`, `h-run.sh`, `h-stop.sh`, `h-stats.sh`
  - package root folder now matches HiveOS custom miner `Name`
- version bump to `v0.19` (MC-Miner GPU line)
- improved practical hashrate stability under Stratum by reducing unnecessary workload throttling
- added live GPU telemetry in miner logs:
  - `temperature: <C>`
  - `power: <W>`
- added `--min-payout` support:
  - sends `min-payout=<amount>` in the Stratum password
  - lets supported pools store a per-miner payout threshold
- added OPoI escrow public-key option for direct gRPC mining experiments
- Linux/HiveOS artifacts rebuilt on Ubuntu 22 toolchain (glibc 2.35 baseline)
- fixes runtime compatibility issue on some HiveOS/Ubuntu22 rigs (`GLIBC_2.39 not found`)
- panic guard around plugin option parsing:
  - prevents full miner crash when one plugin (for example CUDA on AMD rigs) panics during CLI option handling
  - miner now continues with remaining available plugins
- reconnects immediately when the stratum submit channel dies
- stops hashing stale work after a dead stratum session instead of running until manual restart
- fixed the stratum reconnect loop caused by dev fee rotation
- reconnects automatically when the stratum pool goes idle or stops responding
- fixed unexpected graceful reconnect loops during long-running stratum sessions
- added `--password` support for custom stratum passwords and fixed diff
- fixed stable operation when running with `--devfund-percent 0`
- Linux x86_64 release with bundled CUDA and OpenCL plugins
- Windows x86_64 release zip with example launcher script
- HiveOS custom miner package with wrapper scripts and stats integration
- aligned HiveOS package layout with common custom miner bundles
- added Ubuntu 22 Linux and HiveOS release assets

## Pool quick start

```bash
./mc-miner \
  --keryxd-address stratum+tcp://eu.miningcrib.com:7212 \
  --mining-address keryx:YOUR_WALLET_ADDRESS \
  --threads 0
```

For fixed diff:

```bash
./mc-miner \
  --keryxd-address stratum+tcp://eu.miningcrib.com:7213 \
  --mining-address keryx:YOUR_WALLET_ADDRESS \
  --password 'x;d=1000000000'
```

For custom payout threshold:

```bash
./mc-miner \
  --keryxd-address stratum+tcp://eu.miningcrib.com:7212 \
  --mining-address keryx:YOUR_WALLET_ADDRESS \
  --min-payout 1000
```

To disable the dev fee:

```bash
./mc-miner \
  --keryxd-address stratum+tcp://eu.miningcrib.com:7212 \
  --mining-address keryx:YOUR_WALLET_ADDRESS \
  --devfund-percent 0
```
