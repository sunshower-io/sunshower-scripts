#!/bin/bash
projects=(
	"arcus" 
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
cd "gradle-plugins" && git commit -am "Fixing defects" && git push origin master
for i in "${projects[@]}"
do
    cd ../ && cd "$i" && git commit -am "Fixing defects"  && git push origin master

done;
