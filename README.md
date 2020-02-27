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

Then navigate to the location of the `restart.sh` and `start.sh` and execute the following to make the scripts executable
```
chmod +x restart.sh
chmod +x start.sh
```
Now it is time to start the server, this can be done by reading the Note section or just by simply executing the restart script when in the script's directory:
```
./restart.sh
```
*Note there is a 5 minute delay on server startup because of the script's delay using this method*

## Recommended
To maximise the benefit of these scripts, an automatic repetition of the script should be setup.
Crontab on linux works effectively and simply for this implementation.

Say if the restart script is located at `/home/zomb/scripts`, then the crontab implementation of the restart script can be implemented using the commands as follows:
```
crontab -e
```
Then insert the following line
```
55 */2 * * * /home/zomb/scripts/restart.sh
```

This will restart a target instance every 2 hours. Read more on crontab scheduling at this [page](https://opensource.com/article/17/11/how-use-cron-linux).

## Note
Just note that this script assumes the server runs on a screen instance named `mc`. If needed on first setup, run the following to get the server initially running while in the directory of the server jar file:
```
screen -S mc java -Xms1G -Xmx2G -jar {jarfile_name}.jar
```
