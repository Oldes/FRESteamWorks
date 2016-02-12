@echo off

:: Set working dir into FlashDevelop test project
cd %~dp0 & cd .\FRESteamWorksTest_FD

set PAUSE_ERRORS=1
call bat\SetupSDK.bat
call bat\SetupApp.bat

echo.
echo Starting AIR Debug Launcher...
echo.

adl "%APP_XML%" "%APP_DIR%" -extdir ..\FRESteamWorksLib_FD\lib\
if errorlevel 1 goto error
goto end

:error
pause

:end
