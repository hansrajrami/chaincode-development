#!/bin/bash
export FABRIC_LOGGING_SPEC=DEBUG
export CORE_PEER_LOCALMSPID=DEFAULT
export CORE_PEER_MSPCONFIGPATH="$PWD/msp"
export CORE_PEER_TLS_ENABLED=false

peer channel create -c myc -f myc.tx -o orderer:7050
peer channel join -b myc.block

