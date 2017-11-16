PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& '%~dp0AppsRemover.ps1'"
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& '%~dp0CortanaRemover.ps1'"
cscript %~dp0Office365Remover.vbs

