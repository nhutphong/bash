#! /usr/bin/zsh

echo "Tao la \$*"
echo $#
for str in "$*"
do
    echo $str
done
echo

echo $#
echo "Tao la \$@"
for str in "$@"
do
    echo $str
done


# dung bash read.sh
# read -p 'Username: ' uservar
# read -sp 'Password: ' passvar
# echo 
# echo Username : $uservar Password : $passvar


# dung zsh read.sh
# read "variable_name? blabla..." no option -p
read "username?What your name ? "
echo $username

read -s "pass?password: "
echo $pass


# IFS=' ' la sep giua cac args $*
IFS='-'

echo "Hello World"
echo "$0"
echo "$1"

echo acong: $@
echo thang=count: $#
echo nhan: $*
echo underscore arg cuoi: $_

print acong: "$@" # array[args, ...]
print "IFS: $IFS"
print nhan: "$*" # bi anh huong boi $IFS = ' '
print $$

arr="$@"
str="$*"

for item in $@
do
	echo arr: $item

done

echo 

for letter in $*
do
	echo str: $letter

done