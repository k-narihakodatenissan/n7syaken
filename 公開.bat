@echo off
cd /d %~dp0
git pull
git add -A
git commit -m "update %date% %time%"
git push origin main
echo.
echo Done. It takes 1-2 minutes to appear on the site.
pause