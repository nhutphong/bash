#!/usr/bin/zsh


cal
ncal

time
times


#password
passwd

whoaim
who

users
chgrp

ps
top


open file in terminal:
cat: file_name_nho, show contents dau->end
tac: show contents end->dau

more: mo file_lon theo page
file:
less:  mo file trong terminal scroll tu tu
head: 10 dong dau
tail: print 10 lines cua file| tail: mo file, in 10 dong cuoi
nl: lines number => int
more: page number => %int


tim kiem:
wc file_name: dem so: <lines, words, chars>
wc -l < path_to_file=source
grep: tim kiem contents va highlight no trong filev
awk <-options> '{print $1}' => xu ly file text rat manh, la 1 ngon ngu lap trinh
sed 's/regex /g' stdin=file: find, replace,
 /g=replace, /d=delete


sap xep:
sort, ...,  trong file
sort:
cut -d "," -f 1 name.txt => remove comma(,) -> -f 1 la 1 tab
tr: replace text stdin => new_text stdout


tim kiem files and dirs
find <path,...,> <options> <contents>  => tim file trong dir
find path -name lulu\* => tim lulu...
-iname phu dinh
-regex, -iregex
-type <bcdpfls>
-mtime <+,- hour> +=sau24h, -=truoc24h
-size
find . -name \? -daystart -mtime +0 -mtime -3
locate <path to path>


so sanh contents file:
cmp <options>
diff file1 file2


network:
nc
nmap


set `cmd`: $1,$2... la stdout_cmd


split: chia nho file
cat file* > new_join_file