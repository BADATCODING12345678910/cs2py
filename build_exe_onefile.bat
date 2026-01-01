@echo off
echo Checking for PyInstaller...
pip show pyinstaller > nul 2>&1
if errorlevel 1 (
    echo PyInstaller not found. Installing...
    pip install pyinstaller
)

echo.
echo Building cs2py as single executable...
echo.

pyinstaller --onefile cs2py.spec

echo.
echo Build complete! Check the 'dist' folder for cs2py.exe
echo.
pause
