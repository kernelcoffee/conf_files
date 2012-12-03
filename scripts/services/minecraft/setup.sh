#!/bin/sh

#create user minecraft
adduser minecraft

#install minecraft server as minecraft user
su minecraft -c "
cd ~;
mkdir minecraft;
cd minecraft;
wget https://s3.amazonaws.com/MinecraftDownload/launcher/minecraft_server.jar
echo 'generator-settings=
allow-nether=true
level-name=world
enable-query=false
allow-flight=false
server-port=25565
level-type=DEFAULT
enable-rcon=false
level-seed=-753548930
server-ip=
max-build-height=256
spawn-npcs=true
white-list=true
spawn-animals=true
snooper-enabled=true
hardcore=false
texture-pack=
online-mode=true
pvp=true
difficulty=1
gamemode=0
max-players=20
spawn-monsters=true
generate-structures=true
view-distance=10
spawn-protection=16
motd=Kernelcoffee Minecraft server
' > server.properties

echo 'alexor85' > ops.txt

echo 'alexor85
kharzyga' > white-list.txt
"

#copy the init file and start the server
cp ../../../init/minecraft /etc/init.d/
chmod +x /etc/init.d/minecraft
/etc/init.d/minecraft start

#setup cron for daily backup
echo '#!/bin/sh

/etc/init.d/minecraft backup
' > /etc/cron.daily/minecraft

chmod +x /etc/cron.daily/minecraft
