@echo off
chcp 65001 > nul
python -m PyInstaller --onefile --noconsole --icon=icon.ico --name alpha_trimmer --distpath Installer\dist --workpath Installer\build --specpath Installer alpha_trimmer.py
pause