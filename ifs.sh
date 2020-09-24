#!/bin/bash

full_name="phong;nhut;tan;heo;dung;thong"
OLD_IFS=IFS
IFS=";"

for name in $full_name; do
	echo $name
done

IFS=OLD_IFS

cd /root/Desktop

#doc file dung while read
while_read_line(){
	while read line; do
		echo $line
	done < test_1.txt
}

OLD_IFS=IFS
IFS="\n"
cmd_read_line(){
	contents=`cat test_1.txt`
	for line in $contents;do
		echo $line
	done
}
cmd_read_line

IFS=OLD_IFS

#doc file, khong can backup IFS
while IFS=: read name passwd uid gid fullname ignore
do
echo "$name $fullname"
done < /etc/passwd


