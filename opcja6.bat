@echo off
echo   [2;3mCreated by Sebastian Januchowski                  polsoft.ITS                   e-mail: polsoft.its@fastservice.com[0m
echo.
echo [31m--- Uninstalling Microsoft Store ---[0m
echo.
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage "*Microsoft.WindowsStore*" | Remove-AppxPackage"
timeout /t 3 >nul
endlocal
taskkill /f /im explorer.exe & start explorer & exit /b 0