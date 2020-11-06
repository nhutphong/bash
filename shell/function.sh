#! /usr/bin/zsh

:'
 comment
 line1
 line2
'


# run  demo.sh trong file chua no, ko can set chmod
source demo.sh




- là enable
+ là disable

set [+o, ...] history #disable history
set [--abefhkmnptuvxBCEHPT] [-o option-name] [argument …]

set -eu -o pipefail # -o pipefail == add them pipefail

variable="one two three four five"
set -- $variable # -- ko co options thi dung
ta có 
$1=one, $2=two , $3=three, ...


cal [-mjy] [[month] year]
ncal

# measure program running time
time [option...] command [arg...]
time wc /etc/hosts

# User and system times
times


#password
passwd

whoaim
who

users
chgrp

ps
top


mkdir new_folder
mkdir -p path/to/subfolder


open file in terminal:
cat [OPTION]... [FILE]... => xem file tren xuong
tac [OPTION]... [FILE]... => xem file duoi len


more: mo file_lon theo page

file:
less [options]
 <command> | less [options] => mo file trong terminal scroll tu tu
head [options]... [file]... =>  10 dong dau
tail [options]... [file]... => mo file, in 10 dong cuoi
 nl [options]... [File]... => lines number => int

tim kiem:
wc [options]... [file]... => dem so: <lines, words, chars>

grep [OPTION...] PATTERNS [FILE...]
grep [OPTION...] -e PATTERNS ... [FILE...]
grep [OPTION...] -f PATTERN_FILE ... [FILE...]
grep: tim kiem contents va highlight no trong file

awk <-options> '{print $1}' => xu ly file text rat manh, la 1 ngon ngu lap trinh
sed 's/regex /g' stdin=file: find, replace,
 /g=replace, /d=delete


sap xep:
sort [options] [file...]  => sort content trong file

cut [OPTION]... [FILE]...
cut -d "," -f 1 name.txt => remove comma(,) -> -f 1 la 1 tab

tr
echo "Hello World" | tr "A-Za-z" "a-zA-Z"
hELLO wORLD


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