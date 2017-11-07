#!/bin/bash
projects=(
    "sunshower-env"
	"gradle-plugins"
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
        "sunshower-ui"
)
for i in "${projects[@]}"
do
    #cd ../ && cd "$i" && mvn clean install -f bom && gradle clean build pTML idea
    cd ../
    git clone git@github.com:sunshower-io/$i

done;
