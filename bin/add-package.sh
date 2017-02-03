#!/usr/bin/env bash

PACKAGE="./packages/$1"

watchman > /dev/null 2>&1 -j <<-EOT
  ["trigger", "$PACKAGE", { "name": "build-js", "expression": ["match", "src/**/*.js", "wholename"], "command": ["npm", "run", "babel"] }]
EOT

watchman > /dev/null 2>&1 -j <<-EOT
  ["trigger", "$PACKAGE", { "name": "build-css", "expression": ["match", "src/**/*.css", "wholename"], "command": ["npm", "run", "css"] }]
EOT

echo "Added package: $1"
