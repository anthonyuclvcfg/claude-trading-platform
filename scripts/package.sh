#!/usr/bin/env bash
# Builds the archive that Claude Desktop accepts in Customize > Plugins > Add > Upload plugin.
set -euo pipefail

root=$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)
cd "$root"

name=$(node -p "require('./.claude-plugin/plugin.json').name")
version=$(node -p "require('./.claude-plugin/plugin.json').version")
out="dist/$name-$version.zip"

mkdir -p dist
rm -f "$out"
# Runtime files only. The marketplace file, reference material and scripts stay out of the upload.
zip -X -q -r "$out" .claude-plugin/plugin.json .claude-plugin/icon.png .mcp.json commands README.md LICENSE -x '*.DS_Store'

unzip -Z1 "$out"
shasum -a 256 "$out"
