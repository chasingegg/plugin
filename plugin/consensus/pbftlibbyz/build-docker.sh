#!/bin/sh

dir=$(cd $(dirname $0); cd ../../../; pwd)
docker build -t pbftlibbyz -f $dir/plugin/consensus/pbftlibbyz/Dockerfile .
