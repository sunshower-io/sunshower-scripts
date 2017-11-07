#!/bin/bash
projects=(
	"sunshower-service"
        "sunshower-hal"
        "sunshower-sdk"
        "sunshower-web"
)

for i in "${projects[@]}"
do
    cd ../ && cd "$i"
    echo "****** building $i ******"
    mvn clean install -f bom && gradle clean build pTML idea -x test

done;
