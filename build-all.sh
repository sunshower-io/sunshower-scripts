#!/bin/bash
projects=(
	"arcus" 
	"maelstrom"
	"barometer" 
	"sunshower-env" 
        "sunshower-test"
	"sunshower-schemata" 
	"sunshower-common" 
	"sunshower-persist" 
	"sunshower-api"
	"sunshower-service"
        "sunshower-hal"
        "sunshower-sdk"
        "sunshower-web"
)
cd ../ && cd "gradle-plugins" && gradle clean build pTML
cd ../ && cd "sunshower-env" && mvn clean install -f bom
for i in "${projects[@]}"
do
    cd ../ && cd "$i" && mvn clean install -f bom && gradle clean build pTML idea

done;
