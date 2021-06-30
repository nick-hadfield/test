#!/bin/bash

KEY=$1
if [ -t 0 ]; then
    JSON="{}"
else
    JSON=$(cat -)
fi

echo $JSON | jq ".$KEY // \"\"" -r