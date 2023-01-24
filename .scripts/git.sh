#!/bin/bash
file_date=(`date +%Y-%m-%d_%H-%M`)
log_date=(`date +%Y-%m-%d_%H:%M:%S`)
echo START GIT upload at $log_date
echo "-------------------------------------------------" >> /home/pi/printer_data/config/Backuplogs/git_ready.log
echo START GIT upload at $log_date >> /home/pi/printer_data/config/Backuplogs/git_ready.log
echo "-------------------------------------------------" >> /home/pi/printer_data/config/Backuplogs/git_ready.log
echo "-------------------------------------------------" >> /home/pi/printer_data/config/Backuplogs/git_fail.log
echo START GIT upload at $log_date >> /home/pi/printer_data/config/Backuplogs/git_fail.log
echo "-------------------------------------------------" >> /home/pi/printer_data/config/Backuplogs/git_fail.log
cd ~/printer_data/config >> /home/pi/printer_data/config/Backuplogs/git_ready.log
sleep 0.25s ; git remote -v 1>> /home/pi/printer_data/config/Backuplogs/git_ready.log 2>> /home/pi/printer_data/config/Backuplogs/git_fail.log
sleep 0.25s ; git remote rm origin 1>> /home/pi/printer_data/config/Backuplogs/git_ready.log 2>> /home/pi/printer_data/config/Backuplogs/git_fail.log
sleep 0.25s ; git remote add origin https://github.com/diySascha/I3A_klipper_backup.git 1>> /home/pi/printer_data/config/Backuplogs/git_ready.log 2>> /home/pi/printer_data/config/Backuplogs/git_fail.log
sleep 0.25s ; git remote -v 1>> /home/pi/printer_data/config/Backuplogs/git_ready.log 2>> /home/pi/printer_data/config/Backuplogs/git_fail.log
sleep 0.25s ; git init 1>> /home/pi/printer_data/config/Backuplogs/git_ready.log 2>> /home/pi/printer_data/config/Backuplogs/git_fail.log
sleep 0.25s ; git add . 1>> /home/pi/printer_data/config/Backuplogs/git_ready.log 2>> /home/pi/printer_data/config/Backuplogs/git_fail.log
sleep 0.25s ; git commit -m Backup_`date +%Y_%m_%d` 1>> /home/pi/printer_data/config/Backuplogs/git_ready.log 2>> /home/pi/printer_data/config/Backuplogs/git_fail.log
sleep 0.25s ; git branch -M main 1>> /home/pi/printer_data/config/Backuplogs/git_ready.log 2>> /home/pi/printer_data/config/Backuplogs/git_fail.log
sleep 0.25s ; git push -f origin main 1>> /home/pi/printer_data/config/Backuplogs/git_ready.log 2>> /home/pi/printer_data/config/Backuplogs/git_fail.log
log_date=(`date +%Y-%m-%d_%H:%M:%S`)
echo DONE with GIT script $log_date
echo "-------------------------------------------------" >> /home/pi/printer_data/config/Backuplogs/git_ready.log
echo $log_date >> /home/pi/printer_data/config/Backuplogs/git_ready.log
echo "DONE---------------------------------------------" >> /home/pi/printer_data/config/Backuplogs/git_ready.log
echo "-------------------------------------------------" >> /home/pi/printer_data/config/Backuplogs/git_ready.log
echo "-------------------------------------------------" >> /home/pi/printer_data/config/Backuplogs/git_fail.log
echo $log_date >> /home/pi/printer_data/config/Backuplogs/git_fail.log
echo "DONE---------------------------------------------" >> /home/pi/printer_data/config/Backuplogs/git_fail.log
echo "-------------------------------------------------" >> /home/pi/printer_data/config/Backuplogs/git_fail.log
