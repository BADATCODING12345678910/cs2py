# Building cs2py as Standalone EXE

## Prerequisites
Ensure you have all dependencies installed:
```bash
pip install -r requirements.txt
pip install pyinstaller
```

## Build Options

### Option 1: Build with Folder (Recommended)
This creates a folder with the exe and all dependencies:
```bash
build_exe.bat
```
or manually:
```bash
pyinstaller cs2py.spec --clean
```

The executable will be in `dist/cs2py/cs2py.exe`

### Option 2: Build as Single File
This creates a single portable exe file (slower startup):
```bash
build_exe_onefile.bat
```
or manually:
```bash
pyinstaller --onefile --add-data "img;img" --hidden-import=pyMeow --hidden-import=dearpygui.dearpygui --hidden-import=pymem --hidden-import=pypresence --hidden-import=serial --console --name cs2py main.py
```

The executable will be in `dist/cs2py.exe`

## Running the Executable

1. Navigate to the `dist/cs2py/` folder (or `dist/` for single file)
2. Run `cs2py.exe`
3. The program will create a `settings.json` file in the same directory on first run

## Notes

- **Admin Rights**: The program requires administrator privileges to work with CS2
- **Arduino Support**: If using Arduino, make sure the device is connected before running
- **Antivirus**: Some antivirus software may flag the exe as suspicious due to memory manipulation features. Add an exception if needed.
- **First Run**: The executable may take longer to start on first run while unpacking files

## Troubleshooting

If the exe fails to run:
1. Make sure all dependencies are properly installed before building
2. Try running from command prompt to see error messages
3. Ensure you have the latest Visual C++ Redistributables installed
4. Run as Administrator

## File Structure After Build

```
dist/cs2py/
├── cs2py.exe          # Main executable
├── img/               # Image resources
├── settings.json      # Auto-generated on first run
└── [various DLLs]     # Required libraries
```
