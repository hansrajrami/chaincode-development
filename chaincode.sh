#!/bin/bash
export FABRIC_LOGGING_SPEC=INFO
export CORE_PEER_LOCALMSPID=DEFAULT
export CORE_PEER_MSPCONFIGPATH="$PWD/msp"
export CORE_PEER_TLS_ENABLED=false
export CORE_CHAINCODE_ID_NAME="$1:0"
export CHAINCODE_ADDR="$(docker container inspect peer -f '{{.NetworkSettings.Networks.dev_chaincode.IPAddress}}'):7052"

