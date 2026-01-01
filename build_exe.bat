@echo off
echo Building cs2py executable...
echo.

pyinstaller cs2py.spec --clean

echo.
echo Build complete! Check the 'dist/cs2py' folder for the executable.
echo.
pause
