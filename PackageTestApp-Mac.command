#!/bin/sh

cd "`dirname "$0"`"

set -x

cd ./FRESteamWorksTest_FD

cp ./bin/FRESteamWorksTest.swf ./

/AIRSDK/bin/adt -package -storetype pkcs12 -keystore ./cert/FRESteamWorksTest.p12 -storepass fd -target bundle bin/FRESteamWorksTest.app application.xml libsteam_api.dylib steam_appid.txt FRESteamWorksTest.swf -extdir ../FRESteamWorksLib_FD/ane/

rm ./FRESteamWorksTest.swf

cp ./steam_appid.txt bin/FRESteamWorksTest.app/Contents/MacOS/

cd ..
