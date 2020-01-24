@echo off
REM : PARAMETERS FOR USER TO MODIFY
REM : ---------------------------------------------------------------------------------------------------

REM : Game's .exe Location
set "GAME_PATH="E:\PC games\Origin\GAMES\Mirrors Edge Catalyst\MirrorsEdgeCatalyst.exe""

REM : Game's Process Name
set "GAME_PROCESS="MirrorsEdgeCatalyst.exe""

REM : Launcher's Process Name
set "LAUNCHER_PROCESS="Origin.exe""

REM : Time In Seconds Before Killing Launcher
set "TIME=4"

REM : ---------------------------------------------------------------------------------------------------


REM : MAIN
@echo Launching game (which should also launch the 3rd party launcher)...
%GAME_PATH%
:WAITLOOP1
tasklist /FI "IMAGENAME eq %GAME_PROCESS%" 2>NUL | find /I /N %GAME_PROCESS%>NUL
if "%ERRORLEVEL%"=="0" goto WAITLOOP2
goto NOTRUNNING1

:NOTRUNNING1
timeout /t 2
@echo.
@echo Waiting for %GAME_PROCESS% to be running...
goto WAITLOOP1

:WAITLOOP2
tasklist /FI "IMAGENAME eq %GAME_PROCESS%" 2>NUL | find /I /N %GAME_PROCESS%>NUL
if "%ERRORLEVEL%"=="0" goto RUNNING2
goto NOTRUNNING2

:RUNNING2
timeout /t 2
@echo.
@echo %GAME_PROCESS% is running...
goto WAITLOOP2

:NOTRUNNING2
@echo.
@echo %GAME_PROCESS% is no longer running. Killing %LAUNCHER_PROCESS% in %TIME% seconds...
timeout /t %TIME%
taskkill /f /im "%LAUNCHER_PROCESS%"
taskkill /f /im "%LAUNCHER_PROCESS%"