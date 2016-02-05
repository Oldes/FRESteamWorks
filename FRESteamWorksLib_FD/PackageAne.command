#!/bin/sh

cd "`dirname "$0"`"

set -x
AIR_SDK=/Developer/SDKs/AIRSDK_Compiler

cd ./extlib/

install_name_tool -change \
    "@loader_path/libsteam_api.dylib" "@rpath/../Resources/libsteam_api.dylib" \
    ./FRESteamWorks.framework/FRESteamWorks

unzip -o FRESteamWorks.swc

"$AIR_SDK"/bin/adt -package -target ane ../ane/FRESteamWorks.ane \
	descriptor.xml -swc FRESteamWorks.swc \
	-platform Windows-x86 library.swf FRESteamWorks.dll \
	-platform MacOS-x86-64 library.swf FRESteamWorks.framework

rm library.swf
rm catalog.xml

cd ..
