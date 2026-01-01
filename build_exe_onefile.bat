@echo off
echo Building cs2py as single executable...
echo.

pyinstaller --onefile --add-data "img;img" --hidden-import=pyMeow --hidden-import=dearpygui.dearpygui --hidden-import=pymem --hidden-import=pypresence --hidden-import=serial --console --name cs2py main.py

echo.
echo Build complete! Check the 'dist' folder for cs2py.exe
echo.
pause
