#!/bin/bash

peer chaincode install -p $1 -n $1 -v 0
peer chaincode instantiate -n $1 -v 0 -C myc -c '{"Args":[]}'
