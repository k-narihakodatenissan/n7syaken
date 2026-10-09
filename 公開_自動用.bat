@echo off
cd /d %~dp0
echo ===== %date% %time% ===== >> publish_log.txt
git pull >> publish_log.txt 2>&1
git add -A >> publish_log.txt 2>&1
git commit -m "update %date% %time%" >> publish_log.txt 2>&1
git push origin main >> publish_log.txt 2>&1
echo done >> publish_log.txt