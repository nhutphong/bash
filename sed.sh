#! /usr/bin/bash

: ' 

# replace word occur dau tien
sed 's/unix/linux/' file.txt
# replace all
sed 's/unix/linux/g' file.txt

# replace word thu 2 occur moi line
sed 's/unix/linux/2' file.txt
# replace word thu 3 occur moi line
sed 's/unix/linux/3' file.txt

#con nhieu nua ...
'

# replace word xuat hien dau tien cua moi line
sed 's/unix/linux/g' text/file.txt