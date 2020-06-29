#!/bin/bash
​
# -Given- Save the first argument to the script to a variable we can use throughout the file.
# (my comment) $1 is referencing the first argument, or the first string after the command
file=$1
​

#  Make a list of unique services
​	# awk '/open/ {print $2}'    # use this to print the services
	# awk '$3>1 {print $3}' NMAP_all_hosts.txt # this seems to work better but still getting a lot of clutter
	# awk '/udp/ {print $2}' NMAP_all_hosts.txt    #no results for this	

	# awk '/tcp/ {print $3}' NMAP_all_hosts.txt                      #this is the best yet, it captures all the services
	#sort services | uniq -c    #or I can possibly do this which sorts on unique values and puts the number of time the word appears next to the word
	
	awk '/tcp/ {print $3}' NMAP_all_hosts.txt > services.txt       #creates a new file called services
	sort -u services.txt                                           #this will sort and keep unique values
	
	
#  Make a new file that only contains the information needed to complete the task (Ip's and services - in order)
​	# awk '{match($0,/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+/); ip = substr($0,RSTART,RLENGTH); print ip}'  #this will print the ip addresses but leaves in spaces
	# awk '$5 ~ /192/ { print $5 }' NMAP_all_hosts     #this gives me the IPs in order assuming they all begin with 192
	awk '$5 ~ /192/ ||  /tcp/ { print $5, $3}' NMAP_all_hosts >> information.txt    #this gives me each IP followed by its services
	
	
# Save a regular expression that will identify an IP to a variable
	#while read line; do​	
	#	ip="$(grep -oE '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' <<< "$line")"   #may need to adjust the {1.3} column
	#	echo "$ip"                                                                      #printing to the new ip variable?
	#done < "NMAP_all_hosts"                                                              # is this referencing the right file?

			#string values use brackets while numerical uses doubel parenthesis





#  Loop through each unique service once
		#echo information.txt | uniq -c # will count how many times the service occurs 
	for i in information.txt
	do	
		if i !              #  Initialize 'for loop' variables
​

func services(n) {
​	for i in list:
	do
		print i
	done}
​
func services1(n) {          #
	for(i=0;i++) {           # Here I am trying to start with 1 service and each time it shows up again, add one to it
		printf("%d ", i)     #print an integer in a special format of i
	}
	printf("\n")
}
{printlist($1)               #

​
#  Nested while loop that reads the entire 'clean file' once per service (for loop)
​
​
#  Test if the line is an IP
​function valid_ip()
{
    local  ip=$1
    local  stat=1

    if [[ $ip =~ ^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$ ]]; then
        OIFS=$IFS
        IFS='.'
        ip=($ip)
        IFS=$OIFS
        [[ ${ip[0]} -le 255 && ${ip[1]} -le 255 \
            && ${ip[2]} -le 255 && ${ip[3]} -le 255 ]]
        stat=$?
    if
    return $stat

#  Save the IP to a temp variable
​

​
#  Test if the line is the same service as the for loop
​
#  Save the temp variable(IP) to a temporary IP list file
​
​
​
​
​
​
#  Get count of IPs
​
​
# Display all the data formatted correctly
​
​# awk  -F”:”  ‘                                                                       #indidates I'm formatting the information
BEGIN { printf “%-8s %-3s\n” , “Protocol:”,  “Count: ”                               # This will create the header line of protocol and count but doesn't have the numbers yet
print " =================================================="}
NR==1, NR==10 {printf “%-8s %3d\n”, $1, $3 } ‘ etc/password							  # this formats the first and second row to be no longer than 10 lines, so this needs to change

​
​
​
​
#  Clean up any script generated files


End {print "This is my finished product"}