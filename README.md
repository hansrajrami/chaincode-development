# Chaincode development environment for Hyperledger Fabric

This environment is copy of the fabric-samples chaincode-docker-devmode
https://github.com/hyperledger/fabric-samples/tree/master/chaincode-docker-devmode

But, there are unnecessary components like cli and chaincode containers. To build and run chaincode commands we have to login to those containers. So, that both containers are removed in this environment and chaincodes commands can be performed from the local host.

\# shows the number of terminal  

### To start the environment #1 

` docker-compose up ` 

To create channel #2

` . script.sh  `

### Register chaincode in network #2

` . chaincode.sh mycc 0 `

` mycc -peer.address $CHAINCODE_ADDR `

### Install, instantiate and invoke chaincode #3

` . chaincode.sh mycc 0 ` 

` peer chaincode install -p mycc -n mycc -v 0 `

` peer chaincode instantiate -n mycc -v 0 -C myc -c '{"Args":["InitLedger"]}' `

` peer chaincopeer chaincode invoke -n mycc -C myc -c '{"Args":["CreateUser","AK10","Hansraj","Rami"]}' `

` peer chaincode invoke -n mycc -C myc -c '{"Args":["QueryUser","AK10"]}' `

### If you want to run chaincode commands in other terminal just run chaincode.sh to load env variables

` . chaincode.sh mycc 0 ` 

### To clean the environment #1

Press  `CTRL+C` and  `docker-compose down -v`


