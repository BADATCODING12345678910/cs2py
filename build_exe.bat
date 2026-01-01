@echo off
echo Checking for PyInstaller...
pip show pyinstaller > nul 2>&1
if errorlevel 1 (
    echo PyInstaller not found. Installing...
    pip install pyinstaller
)

echo.
echo Building cs2py executable...
echo.

pyinstaller cs2py.spec --clean

echo.
echo Build complete! Check the 'dist/cs2py' folder for the executable.
echo.
pause
