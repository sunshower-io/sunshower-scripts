#!/bin/bash
echo "****** building gradle-plugins ******"
cd ../ && cd "gradle-plugins" && gradle clean build pTML

first_projects=(
	"arcus"
	"maelstrom"
	"barometer"
)

for i in "${first_projects[@]}"
do
	cd ../ && cd "$i"
	echo "****** building $i ******"
	mvn clean install -f bom && gradle clean build pTML idea -x test
done;

echo "****** building sunshower-env  ******"
cd ../ && cd "sunshower-env" && mvn clean install -f bom

projects=(
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

for i in "${projects[@]}"
do
    cd ../ && cd "$i"
    echo "****** building $i ******"
    mvn clean install -f bom && gradle clean build pTML idea -x test

done;
