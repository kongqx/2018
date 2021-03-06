 <#
			"SatNaam WaheGuru"

Date: 11-June-2012 ; 16:37Pm
Author: Aman Dhally
Email:  amandhally@gmail.com
web:	www.amandhally.net/blog
blog:	http://newdelhipowershellusergroup.blogspot.com/
More Info : 

Version : 2 

	/^(o.o)^\ 


#>
 
 
 #Notes
 	# make sure you have RSAT Tool Installed
 	# Make Sure you imported Active Directory Module before running this command
 
 # Global Variables
 	# OU Path of the Group in which we want to create groups
 		$path =  "OU=testing,DC=analysys,DC=com" 
		
 	# Domain Admin Credentails
		$cre = gET-C`R`edeNTI`AL
		
	#Main Server
 		$srvr = "Dc-man"
 
 # username is domain users "SAM Account " name , use Get-AdUser to find our SAM name of the user.
 		$usr = "Will.Smith","ricky.Martin","kate.Winslet","Michael.jackson"
		
 #Dfine Group which need to be created
 		$grpname = "Music","Movies","Famous_Singers","HollyWood"

 # Lets use ForEach patters to create the group
 
 	foreach ($group in $grpname) {
 		$name = $group
		
			# Just a console message
			wrItE-`Ho`sT -ForegroundColor Magenta  "Grouname is $name."
			
			# Using AD Module
			NE`W-`ADg`RouP -Path $path -Name $name  -GroupCategory Security -GroupScope Global -Server $srvr -Credential $cre 
			
			# Just a console message
			WrI`TE`-HOSt -ForegroundColor Yellow  "Group $name Created, let me add users in to this group." 
			
			# Using AD Module
			a`D`D-AdGROu`pM`eMBer $name $usr  -Server $srvr
			
			# Just a console message
			WRI`T`E-HOsT -ForegroundColor Green "Member are added to the group $name ."

####Everything Should be done by now ###

 }
 

### End of the Script#### | A m a n | D h a l l y | 
