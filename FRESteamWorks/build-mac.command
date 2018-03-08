#!/bin/sh

cd "`dirname "$0"`"

# ADOBE SYSTEMS INCORPORATED
#  Copyright 2011 Adobe Systems Incorporated
#  All Rights Reserved.
# 
# NOTICE: Adobe permits you to use, modify, and distribute this file in accordance with the 
# terms of the Adobe license agreement accompanying it.  If you have received this file from a 
# source other than Adobe, then your use, modification, or distribution of it requires the prior 
# written permission of Adobe.

set -x

XCODEBLD="/usr/bin/xcodebuild"

rm -rf ./build

$XCODEBLD -project ./FRESteamWorks.xcodeproj	\
    -configuration Release	\
    -arch x86_64	\
    clean build

cp ../SteamWorks/libsteam_api.dylib ./build/Release/FRESteamWorks.framework/Versions/A/