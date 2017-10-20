@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

for %%v in ("*.ahk") do (
	start "C:\Program Files\AutoHotkey\AutoHotkey.exe" "%%~v"
)