## What's new

- version bump to `v0.25`
- added explicit RTX 50xx/Blackwell CUDA profile `sm_120` (CUDA 13.2 PTX)
- retained CUDA coverage for 1xxx/2xxx/3xxx/4xxx/5xxx families via `sm_61/sm_75/sm_86/sm_89/sm_100/sm_120`
- Ubuntu 22 baseline build verified: packaged binaries require max `GLIBC_2.34`
- HiveOS package root verified as `mc-miner-v0.25-linux/`
- release artifacts:
  - `mc-miner-v0.25-linux-ubuntu22-x86_64.tar.gz`
  - `mc-miner-v0.25-linux-ubuntu24-x86_64.tar.gz`
  - `mc-miner-v0.25-linux-ubuntu26-x86_64.tar.gz`
  - `mc-miner-v0.25-linux-hiveos.tar.gz`

Previous `v0.24` release artifacts:

  - `mc-miner-v0.24-linux-ubuntu22-x86_64.tar.gz`
  - `mc-miner-v0.24-linux-ubuntu24-x86_64.tar.gz`
  - `mc-miner-v0.24-linux-ubuntu26-x86_64.tar.gz`
  - `mc-miner-v0.24-linux-hiveos.tar.gz`

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
