#!/usr/bin/env bash

echo "Creating Module Directory Structure"
/bin/bash -c "mkdir -p tutorials/{week01,week02,week03,week04,week05,week06,week07,week08,week09,week10,week11,week12}"
/bin/bash -c "rm echo"

EXT_DIR="$HOME/.vscode-server/extensions"
if [ -d "$EXT_DIR" ]; then
  rm -rf "$EXT_DIR"/github.copilot*
fi

exec "$@"
