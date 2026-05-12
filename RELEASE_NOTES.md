## What's new

- version bump to `v0.23`
- fixed CUDA/OpenCL worker initialization failures so the miner logs the error instead of aborting with exit code 134
- HiveOS package root verified as `mc-miner-v0.23-linux/`
- release artifacts:
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
