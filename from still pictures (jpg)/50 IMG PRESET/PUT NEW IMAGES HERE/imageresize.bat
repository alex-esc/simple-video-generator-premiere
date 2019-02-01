@echo off
cls

set argument=%1
if defined argument (
  pushd "%~1"
) else (
  pushd "%~dp0"
)

set "bname=%~n0"
set "resolution=720"

echo %bname% | find "480"
if %ERRORLEVEL% EQU 0 set "resolution=480"

echo %bname% | find "720"
if %ERRORLEVEL% EQU 0 set "resolution=720"

echo %bname% | find "1080"
if %ERRORLEVEL% EQU 0 set "resolution=1080"

if not exist output mkdir output

for /f "tokens=* delims=" %%G in ('dir /A-D /B *.jpg') do (
  ffmpeg -i "%%~G" -vf scale=-1:%resolution% "output\%%~nG_resized%resolution%.jpg"
)

for /f "tokens=* delims=" %%G in ('dir /A-D /B *.png') do (
  ffmpeg -i "%%~G" -vf scale=-1:%resolution% "output\%%~nG_resized%resolution%.png"
)

exit