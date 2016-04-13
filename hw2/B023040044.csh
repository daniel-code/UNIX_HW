#! /bin/tcsh
alias e echo
foreach i ( 1 2 3 )
	e
	e
	e "UNIX System V, Release 2.2 (pokey)"
	e
	e
	e -n "login: "
	set N = "$<"
	e -n "password: "
	set P = "$<"
	while(  "$N" == "$1"  &&  "$P" == "$2"  ) 
	e	
	e "Welcome to Unix"
	e
	e
	e "Please clean up your directories.  The filesystem is getting full."
	e "Our tcp/ip link to gamma is a little flaky, but seems to work."
	e "The current version of ftp can only send files from your home"
	e "directory, and deletes them after they are sent!  Be careful."
	e
	e "Note: Restricted bourne shell in use."
	e
	exit
	end
	e "login incorrect"
	e
end
exit 2
