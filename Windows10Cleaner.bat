@echo off

echo checking for root permissions...

net session >nul 2>&1
if %errorLevel% == 0 (
    echo [92mSUCCESS![0m
    goto:remover
) else (
    echo [91mERROR: permission denied![0m
    goto:exit
)



:remover
echo.
echo press ANY key to continue...
pause >nul

echo.
echo.
echo executing apps remover script...
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& '%~dp0apps-remover.ps1'"
echo [92mDONE![0m
echo.
echo executing cortana remover script...
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& '%~dp0cortana-remover.ps1'"
echo [92mDONE![0m
echo.
echo executing office remover script...
echo.
cscript %~dp0office365remover.vbs
echo [92mDONE![0m



:exit
echo.
echo press ANY key to EXIT...
pause >nul
