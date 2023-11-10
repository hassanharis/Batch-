@echo off
setlocal enabledelayedexpansion

rem Define the output text file name
set "outputFile=filenames.txt"

rem Create or overwrite the output text file
type nul > %outputFile%

rem Iterate through the files in the current directory
for %%F in (*.*) do (
    set "fullFileName=%%~nF"  // Get the file name without extension
    set "shortName=!fullFileName:~3!"  // Remove the first 3 letters
    set "shortName=!shortName:ø=°!"
    echo !shortName!>>%outputFile%
)

echo Modified file names have been written to %outputFile%
pause
