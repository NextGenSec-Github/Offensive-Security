#!/bin/bash

# $1 is the website URL
site="$1"

if [ "$site" == "-help" ] || [ "$site" == "--help" ]; then
    echo "This script gets the public IP address of a website"
    echo "Uses only one parameter, the URL of the website"
    echo "It's created by NGS"
    exit 0;
fi

if [ "$#" != 1 ]; then
    echo "You have to provide the website URL"
    exit 1;
fi

ip_address=$(nslookup "$site" | grep -oE 'Address: ([0-9]{1,3}\.){3}[0-9]{1,3}' | cut -d ' ' -f 2)

if [ -n "$ip_address" ]; then
    echo "The IP address of [$site] is: $ip_address"
else
    echo "Failed to retrieve the IP address of [$site]"
    exit 1
fi
