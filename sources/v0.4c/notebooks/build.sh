#!/bin/bash

if [ $# -ne 2 ]
then
    echo "2 arguments expected"
    echo "Usage : bash build.sh [prefix] [jsonConfig]"
    exit 1
fi
tagPrefix=$1
config=$2

function check_image() {
    docker manifest inspect "$1" > /dev/null
}

args=$(cat "${config}" | jq -r '.build_args | to_entries | map("--build-arg " +  (.key | tostring) + "=\"" + (.value.DockerfileValue | tostring )+ "\"") | join(" ")'  )
labels=$(cat "${config}" |jq -r '.labels // [] | to_entries | map("--label " +  (.key | tostring) + "=\"" + (.value | tostring ) + "\"") | join(" ") ' )
tag=$(cat "${config}" | jq -r '.meta_args | .image_tag ' )
fullTag=$tagPrefix$tag


echo "Tag : $fullTag"
if check_image "$fullTag"
then
    echo "Already exists on remote"
    exit 0
fi

cmd="docker buildx build -t $fullTag -f Dockerfile $args $labels . && docker push $fullTag"

echo "We are launching this command : $cmd"
eval "$cmd"
