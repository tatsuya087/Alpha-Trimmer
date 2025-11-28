@echo off
chcp 65001 > nul
python -m PyInstaller --onefile --noconsole --icon=icon.ico --name alpha_trimmer alpha_trimmer.py
pause