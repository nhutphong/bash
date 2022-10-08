#! /usr/bin/bash

:<<"comment"
ls >file.txt == ls 1>file.txt
 > == 1> default stdout
 2> stderr
 %> stdout and stderr

#redirection: cmd to file, or file to cmd
python hello.py > output.txt   # stdout to (file)
cat <file.txt 				   # stdout file cho stdin command cat
python hello.py >> output.txt  # stdout to (file), append
python hello.py 2> error.log   # stderr to (file)
python hello.py 2>&1           # stderr to stdout cua chinh command python
python hello.py 2>/dev/null    # stderr to (null)
python hello.py &>/dev/null    # stdout and stderr to (null)

#append "xin chao redirection" vao cuoi file.txt
echo "xin chao redirection" >> file.txt

pipe: use cho cmd1 to cmd2 to cmd3 ... pass stdout cmd1 to stdin cho cmd2 dung


command: xem thong tin cu the,
	cmd --help
	man cmd
		man -k <search term>
		Do a keyword search for all manual pages containing the given search term.
		/<term>
		Within a manual page, perform a search for 'term'
		n
		After performing a search within a manual page, select the next found item.



cd Desktop/ # jumpto Desktop/
pwd # show workdir=folder dang lam viec
ls #show files, folders, ...

#create del file, folder
touch file.txt
mkdir my_folder
rmdir my_folder			# del my_folder
rm -r mydolder			# del myfolder subfolders files trong no
cp folder1 folder2/
mv folder3 folder4/		#move folder3 vao folder4
mv folder3 folder4		#rename folder3 thanh folder4

cat file 			# xem file tren xuong
tac file 			# xem file duoi len

more file 			# mo file_lon theo page
less file 			# nhieu tinh nang hon cmd more

# filter
head -3 file.txt 	# read 3 line first, left to right
tail -3 file.txt 	# read 3 line lass, left to right
sort file.txt		# sap xep
nl file.txt			# them index cho sdtout dau line
wc file.txt			# count lines, words, characters


echo "Hello World" | cut -b 1,2,3,5,8,9			# Heloor 	

#search regular
grep [OPTION...] PATTERNS [FILE...]
grep [OPTION...] -e PATTERNS ... [FILE...]
grep [OPTION...] -f PATTERN_FILE ... [FILE...]
grep "tip.sh" file1
grep "tip.sh" file1 file2			# search multi files
	options:

egrep 'tip' file

awk
sed

#process management
top
ps aux | grep 'firefox'
kill -i <pid_id>

sleep 5			# 5 giay
selep 15 &		# 5 giay dettach terminal
jobs			# show list job
fg %1 			# attach job1 into terminal


cal
ncal
time
date
time
times

who

nc
nmap

users
chgrp
passwd

comment

