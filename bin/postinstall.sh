#!/usr/bin/env bash

cd packages

for directory in *; do
  if [[ $directory == "test-monorepo"* ]]; then
    npm run add-package -- $directory > /dev/null 2>&1
  fi
done
