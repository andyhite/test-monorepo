#!/usr/bin/env bash

if brew ls --version watchman > /dev/null; then
  echo "Watchman is already installed."
else
  brew install watchman
fi
