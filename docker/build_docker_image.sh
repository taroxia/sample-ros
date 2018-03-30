#!/bin/bash
docker build \
  --tag=sample-ros:latest \
  --file=$(dirname $0)/Dockerfile \
  $(dirname $0)/..
