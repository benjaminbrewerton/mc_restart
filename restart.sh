#!/bin/bash
# Restart script for MC servers

# Messages
msg1="tellraw @a {\"text\":\"Server will restart in"
msg2="\",\"color\":\"red\",\"italic\":true}^M"

# Loop for 1-5 mins
for i in {5..1}
do
screen -S mc -X stuff "${msg1} ${i} minutes ${msg2}"
if [ $i -ne 1 ] ; then sleep 60 ; fi
done

sleep 30

# Loop for 10-30 secs
for i in {3..1}
do
time=$((i*10))
screen -S mc -X stuff "${msg1} ${time} seconds ${msg2}"
if [ $i -ne 1 ] ; then sleep 10 ; fi
done

sleep 5

# Loop for 1-5 secs
for i in {5..1}
do
screen -S mc -X stuff "${msg1} ${i} seconds ${msg2}"
sleep 1
done

# Stop the server
screen -S mc -X stuff "stop^M"

# Sleep for 1 min then start
sleep 60

# CHANGE THE DIRECTORIES BELOW TO MATCH WHERE YOUR FILES ARE AS INSTRUCTED

cd /home/zomb/po3 # This directory should point to the jar file of the server
screen -dmS mc bash /home/zomb/scripts/start.sh # Change /home/zomb/scripts/ to the location of the start.sh script

