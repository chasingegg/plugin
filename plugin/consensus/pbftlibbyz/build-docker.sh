#!/bin/sh

dir=$(cd "$(dirname $0)"; pwd)
cd "$dir/../../../" || exit -1
docker build -t pbftlibbyz -f "$dir/plugin/consensus/pbftlibbyz/Dockerfile" .
