@echo off
:: EchoFrame: добавляет рамку из символов вокруг введенного текста

:main
cls
echo Enter text for the frame:
set /p userInput=

setlocal enabledelayedexpansion
set "length=0"
for /l %%i in (0,1,100) do (
    set "char=!userInput:~%%i,1!"
    if "!char!"=="" goto done
    set /a length+=1
)
:done

set /a length+=4
set "border="
for /l %%i in (1,1,%length%) do set "border=!border!#"
echo %border%
echo # %userInput% #
echo %border%
echo.
echo Press any key to exit...
pause >nul
exit
