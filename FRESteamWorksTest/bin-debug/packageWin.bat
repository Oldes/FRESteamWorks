SET AIR_SDK=c:\SDKs\AIR20
SET ANE_PATH=..\..\FRESteamWorksLib\bin

call "%AIR_SDK%\bin\adt.bat" -package -XnoAneValidate -tsa none -storetype pkcs12 -keystore CertificateTest.p12 -storepass test -target bundle FRESteamWorksTest  FRESteamWorksTest-app.xml FRESteamWorksTest.swf steam_api.dll libsteam_api.dylib steam_appid.txt -extdir "%ANE_PATH%"

call "FRESteamWorksTest\FRESteamWorksTest.exe"
