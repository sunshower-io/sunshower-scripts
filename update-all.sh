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
    cd ../ && cd "$i"
    git checkout master
    git pull
done;
