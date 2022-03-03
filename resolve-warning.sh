#!/bin/bash

# list all php files in the ./teampass/sources directory and comment the line containing "header('Content-type: text/html; charset=utf-8');


for file in ./teampass/sources/*.php
do
    echo "Processing $file"
    sed -i -e 's/header('\''Content-type: text\/html; charset=utf-8'\'');/\/\/header('\''Content-type: text\/html; charset=utf-8'\'');/g' "$file"
done

for file in ./teampass/sources/*.php
do
    echo "Processing $file"
    sed -i -e 's/header('\''Cache-Control: no-cache, must-revalidate'\'');/\/\/header('\''Cache-Control: no-cache, must-revalidate'\'');/g' "$file"
done

for file in ./teampass/sources/*.php
do
    echo "Processing $file"
    sed -i -e 's/header('\''Cache-Control: no-cache, no-store, must-revalidate'\'');/\/\/header('\''Cache-Control: no-cache, no-store, must-revalidate'\'');/g' "$file"
done