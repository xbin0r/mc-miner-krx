#!/usr/bin/env bash

set -euo pipefail

if [[ $# -ne 3 ]]; then
  echo "usage: $0 <release-name> <miner-binary-dir> <output-tar.gz>" >&2
  exit 1
fi

release_name="$1"
binary_dir="$(realpath "$2")"
output_tar="$(realpath "$3")"
script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
staging_dir="$(mktemp -d)"
package_name="$(basename "$output_tar" .tar.gz)"
package_name="${package_name%-hiveos}"
package_root="${staging_dir}/${package_name}"

cleanup() {
  rm -rf "$staging_dir"
}
trap cleanup EXIT

mkdir -p "${package_root}"

install -m 0755 "${script_dir}/h-config.sh" "${package_root}/h-config.sh"
install -m 0755 "${script_dir}/h-run.sh" "${package_root}/h-run.sh"
install -m 0755 "${script_dir}/h-stats.sh" "${package_root}/h-stats.sh"
install -m 0755 "${script_dir}/h-stop.sh" "${package_root}/h-stop.sh"
sed "s/^CUSTOM_VERSION=.*/CUSTOM_VERSION=${release_name}/" \
  "${script_dir}/h-manifest.conf" > "${package_root}/h-manifest.conf"

install -m 0755 "${binary_dir}/mc-miner" "${package_root}/mc-miner"
install -m 0644 "${binary_dir}/libkeryxcuda.so" "${package_root}/libkeryxcuda.so"
install -m 0644 "${binary_dir}/libkeryxopencl.so" "${package_root}/libkeryxopencl.so"

mkdir -p "$(dirname "$output_tar")"
tar -C "${staging_dir}" -czf "${output_tar}" "${package_name}"
