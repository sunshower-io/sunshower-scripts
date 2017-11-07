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
cd "gradle-plugins" && gradle clean build pTML
for i in "${projects[@]}"
do
    #cd ../ && cd "$i" && mvn clean install -f bom && gradle clean build pTML idea
    git clone git@github.com:sunshower-io/$i

done;
