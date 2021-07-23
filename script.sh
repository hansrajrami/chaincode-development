#!/bin/bash
export FABRIC_CFG_PATH=$PWD/config
export FABRIC_LOGGING_SPEC=INFO
export CORE_PEER_LOCALMSPID=DEFAULT
export CORE_PEER_MSPCONFIGPATH="$PWD/msp"
export CORE_PEER_TLS_ENABLED=false

peer channel create -c myc -f myc.tx -o orderer:7050
peer channel join -b myc.block

