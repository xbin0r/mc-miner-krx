## What's new

- version bump to `v0.24`
- rebuilt RTX 40xx/Ada `sm_89` CUDA PTX with CUDA 12.4 for HiveOS driver 550 compatibility
- Ubuntu 22 baseline build verified: packaged binaries require max `GLIBC_2.34`
- CUDA worker initialization errors now include the failing step instead of a generic `unknown error`
- HiveOS package root verified as `mc-miner-v0.24-linux/`
- release artifacts:
  - `mc-miner-v0.24-linux-ubuntu22-x86_64.tar.gz`
  - `mc-miner-v0.24-linux-ubuntu24-x86_64.tar.gz`
  - `mc-miner-v0.24-linux-ubuntu26-x86_64.tar.gz`
  - `mc-miner-v0.24-linux-hiveos.tar.gz`

Previous `v0.23` release artifacts:

  - `mc-miner-v0.23-linux-ubuntu22-x86_64.tar.gz`
  - `mc-miner-v0.23-linux-ubuntu24-x86_64.tar.gz`
  - `mc-miner-v0.23-linux-ubuntu26-x86_64.tar.gz`
  - `mc-miner-v0.23-linux-hiveos.tar.gz`

Previous `v0.22` release artifacts:

  - `mc-miner-v0.22-linux-ubuntu22-x86_64.tar.gz`
  - `mc-miner-v0.22-linux-ubuntu24-x86_64.tar.gz`
  - `mc-miner-v0.22-linux-ubuntu26-x86_64.tar.gz`
  - `mc-miner-v0.22-windows-x86_64.zip`
  - `mc-miner-v0.22-linux-hiveos.tar.gz`

## Pool quick start

```bash
./mc-miner \
  --keryxd-address stratum+tcp://eu.miningcrib.com:7212 \
  --mining-address keryx:YOUR_WALLET_ADDRESS \
  --threads 0
```
