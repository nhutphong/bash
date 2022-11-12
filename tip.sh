#!/usr/bin/zsh

: '
!!		#get new cmd in history
!cat		#get new cat in history
!234		#get cmd 234 in history 

!*		#get all argument of cmd recent in history
!^		#get first argument of cmd recent in history
!$		#get last argument of cmd recent in history
									
# delete history
cat /dev/null > ~/.zsh_history
cat /dev/null > ~/.bash_history

# restart computer
shutdown -r now

#shutdown
shutdown {-P, --poweroff}
shutdown {-r, --reboot} -h
#cancel
shutdown -c

'
