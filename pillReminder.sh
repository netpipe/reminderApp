#!/bin/bash
#Pill Reminder App
#https://unix.stackexchange.com/questions/53841/how-to-use-a-timer-in-bash


date1=$(date -d'+1day' +%s%3N)
#date1=$(date -d'+42seconds' +%s%3N)

echo $date1

while :; do
test=$(( $(date +%s%3N) ))
#test=5-1;
echo "$test"
if [[ $test > $date1 ]]; then

   zenity --info \
--text="reminder to take pills."

        spd-say 'reminder to take pills.'
   echo "testing"
    fi
    sleep 10;
    
done

#date -d '2005-11-05 12:00:00 +0000' '+%s'
#date -d "Oct 21 1973" +%s
#date --date='TZ="America/Los_Angeles" 09:00 next Fri'
#date -d'+1hour +10minutes +20seconds' +%s%3N
#date -d'+4220seconds' +%s%3N
