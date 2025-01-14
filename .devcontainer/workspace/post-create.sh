#!/bin/bash

# Install the latest toolchain versions (Go, Node, etc.)
#
# Most tool versions are detected from the tool's ecosystem files (e.g. package.json, go.mod, etc.)
# See: https://moonrepo.dev/docs/proto/detection
#
# Tool versions can be pinned using `.prototools` file in the workspace root.
# See: https://moonrepo.dev/docs/proto/commands/pin
echo "Installing toolchain..."
proto install
