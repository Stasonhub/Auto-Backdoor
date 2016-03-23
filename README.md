# Auto-Backdoor
Need a jenkins server running, on it make a build, this build needs to be paramatized with the following text pramaters

`dir` 
`Payload_Type`
`port`
`IP`
`binName`

Usage: `python abd.py $BINARY $PLACE TO UPLOAD / DOWNLOAD $PUT SCRIPT LOCATION $JENKINS URL $Jenkins token $Jenkins project location $0 for linux $not used yet, always 0 $Backdoor callback port $backdoor callback ip / domain name`

Jenkins configuration:
	Standord jenkins build, easiest to change jenkins user to be same as www root if on save server (on ubuntu it is www-data, edit	###NEED TO FIND CONFIG LOCATION###)
	Need to edit the following in jenkins:
		1: Make it a pramatrised build with the following
			1: dir
			2: Payload_Type
			3: port		(Note: For shell call back)
			4: IP		(Note: For shell call back)	
			5: binName
		2: Check allow simotaius builds
		3: Set allow remote triggred with a token

PHP Configuration:
	I use apache2 with PHP5
	`sudo apt-get install apache2 libapache2-mod-php5 php5-cgi`
	move the put.php into /var/www/html/ and change the name to something that would not be susspisus
	if you want there is a basic template for making it look like a mail login, with cred harvesting, move everything in mail/ to /var/www/html
		edit `/etc/apache2/sites-enabled/000-default.conf` and add `$HOW TO CHANGE TO index.php`
	
To get shell back:
	nc -lnvp $Backdoor Port #wait for shell

For help email ABD@rahartshorn.com

--
Robert Hartshorn
