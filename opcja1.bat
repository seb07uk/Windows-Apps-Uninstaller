@echo off
echo   [2;3mCreated by Sebastian Januchowski                  polsoft.ITS                   e-mail: polsoft.its@fastservice.com[0m
echo.
echo [31m--- Disabling Microsoft Store App Updates ---[0m
echo.
reg add "HKLM\SOFTWARE\Policies\Microsoft\WindowsStore" /v "AutoDownload" /t REG_DWORD /d 2 /f
timeout /t 3 >nul
endlocal
taskkill /f /im explorer.exe & start explorer & exit /b 0