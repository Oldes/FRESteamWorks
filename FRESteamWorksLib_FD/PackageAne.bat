@echo off
set PAUSE_ERRORS=1

set AIR_SDK=C:\SDKs\AIR20
set SWF_VERSION=30
set PATH=%PATH%;%AIR_SDK%\bin

echo SDK: %AIR_SDK%
echo SWF: %SWF_VERSION%
echo.
echo -----------------------------------------
echo -- Creating ./extlib/FRESteamWorks.swc --
echo -----------------------------------------
echo.

call compc -load-config+=conf/swcConfig.xml  -output extlib/FRESteamWorks.swc -swf-version %SWF_VERSION%  +configname=air

echo.
echo -----------------------------------------
echo -- Creating ./ane/FRESteamWorks.ane    --
echo -----------------------------------------
echo.

cd ./extlib/

unzip -o FRESteamWorks.swc -d ./

call adt -package -target ane ../ane/FRESteamWorks.ane ^
	descriptor.xml -swc FRESteamWorks.swc ^
	-platform Windows-x86 library.swf FRESteamWorks.dll ^
	-platform MacOS-x86-64 library.swf FRESteamWorks.framework

del library.swf
del catalog.xml

cd ..
pause