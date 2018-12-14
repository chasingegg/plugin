#!/bin/sh

dir=$(cd $(dirname $0);pwd)
docker build -t pbftlibbyz -f $dir/Dockerfile .
