#!/bin/bash
# Command to start server
# Adjust the memory required by your server as you deem fit
# Use the notation xG for x gigabytes of memory or xM for x megabytes of memory
# Xms1G and Xmx2G symbolises the minimum and maximum memory respectively
java -Xms1G -Xmx2G -jar forge-1.12.2-14.23.5.2847-universal.jar nogui # Change "forge-1.12.2-14.23.5.2847-universal.jar" to the name of the jar file of your server
