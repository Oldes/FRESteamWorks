#!/bin/sh

cd "`dirname "$0"`"


:: Set working dir into FlashDevelop test project
cd ./FRESteamWorksTest_FD

ls -la ../FRESteamWorksLib_FD/lib/

/AIRSDK/bin/adl -runtime /AIRSDK/runtimes/air/mac/ -extdir ../FRESteamWorksLib_FD/lib/ ./application.xml ./bin/

