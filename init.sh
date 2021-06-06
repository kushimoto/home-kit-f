#!/bin/bash

cat <<EOF > ./environment/.env
APP_NAME=${PWD##*/}
EOF

git submodule init
git submodule update

echo ;

echo "Please execute the following command.";
echo "$ (sudo) docker-compose up -d\n";
