#!/usr/bin/env bash

mkdir .direnv

touch .envrc .ruby-version .node-version .env

cat <<-EOF > .envrc
  export PATH=$(npm bin):$PATH
  export NODE_VERSIONS=~/.nvm/versions/node
  export NODE_VERSION_PREFIX=v  

  set -e

  use node
  dotenv
  ruby-version
EOF

echo "ruby-2.7.1" >> .ruby-version
echo "14.4.0" >> .node-version

direnv allow

