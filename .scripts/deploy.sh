#!/bin/bash

set -e
set -o pipefail

BUILD_CONFIG=$1
NUGET_API_KEY=$2

if [[ "$BUILD_CONFIG" == "Release" ]]; then
	nuget push Didstopia.EpubReader/bin/$BUILD_CONFIG/*.nupkg -ApiKey 
$NUGET_API_KEY;
fi
