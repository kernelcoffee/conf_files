#!/bin/sh

/etc/init.d/minecraft stop

su minecraft -c "
cd ~/minecraft
rm minecraft_server.jar.old
mv minecraft_server.jar minecraft_server.jar.old
wget https://s3.amazonaws.com/MinecraftDownload/launcher/minecraft_server.jar
"

/etc/init.d/minecraft start
