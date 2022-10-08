#! /usr/bin/bash

:<<"comment"
 run file .sh: 
	 1 set chmod permission cho file
	 	chmod 755 file.sh
	 		u=user=7  is rwx
	 		g=group=5 is r-x
	 		o=other=5 is r-x 
	 2 run:
	 	./file.sh
	 	bash file.sh
	 	sh file.sh
	 	zsh file.sh
comment

NAME="John"
echo "Hello $NAME!"

NAME="John"
echo $NAME
echo "$NAME"
echo "${NAME}!"

#phai dung double quotes
NAME="John"
echo "Hi $NAME"  #=> Hi John
echo 'Hi $NAME'  #=> Hi $NAME

#shell execution
echo "I'm in $(pwd)" # $(command)
echo "I'm in `pwd`"	 # `command` backtic
# Same

echo $((a + 200))      # Add 200 to $a
echo "RANDOM"
echo $(($RANDOM%200))  # Random number 0..199