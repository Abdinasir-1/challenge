#! /bin/bash

#To create a group
sudo addgroup team

#To create a user
sudo adduser nas

#To add user to group
sudo usermod -aG team nas

#To make file echo command, change ownership and run file
touch run.sh
echo "#! /bin/bash" >> run.sh
echo "welcom to my world" >> run.sh
chmod 676 run.sh
sudo chown nas:team run.sh
su -c "./run.sh" -m "nas"

