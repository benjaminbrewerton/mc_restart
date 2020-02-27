# mc_restart
A server restart script for Minecraft Servers

## Features
- The restart script restarts the server when executed with a 5 minute delay and features warnings to players of the server's restart
- The start script provides a shorthand method of starting a target server

`These scripts work in unison and both should be used for smooth operation`

## To Use
Download the screen library using
```
apt-get install screen
```
Change the directories **ONLY** as instructed in the scripts to point to your appropriate script/jar locations

## Recommended
To maximise the benefit of these scripts, an automatic repetition of the script should be setup.
Crontab on linux works effectively and simply for this implementation.

Say if the restart script is located at `/home/zomb/scripts`, then the crontab implementation of the restart script can be implemented using the commands as follows:
`crontab -e`
Then insert the following line
`55 */2 * * * /home/zomb/scripts/restart.sh`

This will restart a target instance at every 2 hours
