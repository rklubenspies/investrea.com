#!/bin/bash

# Mark the workspace folder as safe
git config --global --add safe.directory /workspaces/investrea

# Ensure the latest toolchain versions are installed
echo "Ensuring toolchain versions are up to date..."
proto install

# Report the installed toolchain versions for debug purposes
echo "Reporting toolchain versions..."
proto status

# Ensure latest npm dependencies are installed
echo "Ensuring npm dependencies are up to date..."
npm install
