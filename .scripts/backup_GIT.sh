#!/bin/bash
file_date=(`date +%Y-%m-%d_%H-%M`)
log_date=(`date +%Y-%m-%d_%H:%M:%S`)
echo START GIT upload script at $log_date
echo "-------------------------------------------------" >> /home/pi/printer_data/config/Backuplogs/git_ready.log
echo START GIT upload script at $log_date >> /home/pi/printer_data/config/Backuplogs/git_ready.log
echo "-------------------------------------------------" >> /home/pi/printer_data/config/Backuplogs/git_ready.log
echo "-------------------------------------------------" >> /home/pi/printer_data/config/Backuplogs/git_fail.log
echo START GIT upload script at $log_date >> /home/pi/printer_data/config/Backuplogs/git_fail.log
echo "-------------------------------------------------" >> /home/pi/printer_data/config/Backuplogs/git_fail.log
cd ~/printer_data/config >> /home/pi/printer_data/config/Backuplogs/git_ready.log
sleep 0.1s ; git remote -v 1>> /home/pi/printer_data/config/Backuplogs/git_ready.log 2>> /home/pi/printer_data/config/Backuplogs/git_fail.log
sleep 0.1s ; git remote rm origin 1>> /home/pi/printer_data/config/Backuplogs/git_ready.log 2>> /home/pi/printer_data/config/Backuplogs/git_fail.log
sleep 0.1s ; git remote add origin ssh://git@github.com/diySascha/I3A_klipper_backup.git 1>> /home/pi/printer_data/config/Backuplogs/git_ready.log 2>> /home/pi/printer_data/config/Backuplogs/git_fail.log
sleep 0.1s ; git remote -v 1>> /home/pi/printer_data/config/Backuplogs/git_ready.log 2>> /home/pi/printer_data/config/Backuplogs/git_fail.log
sleep 0.2s ; git init 1>> /home/pi/printer_data/config/Backuplogs/git_ready.log 2>> /home/pi/printer_data/config/Backuplogs/git_fail.log
sleep 0.2s ; git add . 1>> /home/pi/printer_data/config/Backuplogs/git_ready.log 2>> /home/pi/printer_data/config/Backuplogs/git_fail.log
sleep 0.1s ; git commit -m Backup_`date +%Y_%m_%d` 1>> /home/pi/printer_data/config/Backuplogs/git_ready.log 2>> /home/pi/printer_data/config/Backuplogs/git_fail.log
sleep 0.1s ; git branch -M main 1>> /home/pi/printer_data/config/Backuplogs/git_ready.log 2>> /home/pi/printer_data/config/Backuplogs/git_fail.log
sleep 0.2s ; git push -f origin main 1>> /home/pi/printer_data/config/Backuplogs/git_ready.log 2>> /home/pi/printer_data/config/Backuplogs/git_fail.log
echo GIT Repo adress: https://github.com/diySascha/I3A_klipper_backup
echo GIT Repo adress: https://github.com/diySascha/I3A_klipper_backup >> /home/pi/printer_data/config/Backuplogs/git_ready.log
log_date=(`date +%Y-%m-%d_%H:%M:%S`)
echo DONE with GIT upload script at  $log_date
echo "-------------------------------------------------" >> /home/pi/printer_data/config/Backuplogs/git_ready.log
echo DONE with GIT upload script at $log_date >> /home/pi/printer_data/config/Backuplogs/git_ready.log
echo "-------------------------------------------------" >> /home/pi/printer_data/config/Backuplogs/git_ready.log
echo "-------------------------------------------------" >> /home/pi/printer_data/config/Backuplogs/git_fail.log
echo DONE with GIT upload script at $log_date >> /home/pi/printer_data/config/Backuplogs/git_fail.log
echo "-------------------------------------------------" >> /home/pi/printer_data/config/Backuplogs/git_fail.log
sleep 0.1s ; echo "$(tail -65 /home/pi/printer_data/config/Backuplogs/git_ready.log)" > /home/pi/printer_data/config/Backuplogs/git_ready.log
sleep 0.1s ; echo "$(tail -65 /home/pi/printer_data/config/Backuplogs/git_fail.log)" > /home/pi/printer_data/config/Backuplogs/git_fail.log