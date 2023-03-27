#!/bin/bash

url_valid(){
    echo -n "Enter an URL to check (for example https://www.google.com): "
    read url

    if [[ "$url" =~ ^(https?://)[A-Za-z0-9._%+-]+\.[A-Za-z]{2,15}/?$ ]]; then
        echo "URL '$url' valid"
    else
        echo "URL '$url' not valid"
    fi
}

