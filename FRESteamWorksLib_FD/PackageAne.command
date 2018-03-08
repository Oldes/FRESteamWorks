#!/bin/sh

cd "`dirname "$0"`"

set -x
AIR_SDK=/Developer/SDKs/AIRSDK_Compiler

cd ./extlib/

unzip -o FRESteamWorks.swc

"$AIR_SDK"/bin/adt -package -target ane ../ane/FRESteamWorks.ane \
	descriptor.xml -swc FRESteamWorks.swc \
	-platform Windows-x86 library.swf FRESteamWorks.dll \
	-platform MacOS-x86-64 library.swf FRESteamWorks.framework

rm library.swf
rm catalog.xml

cd ../lib
rm -Rf *

unzip -o ../ane/FRESteamWorks.ane -d ./FRESteamWorks.ane/

cd ..
