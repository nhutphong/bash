#!/bin/bash

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

read -p 'Username: ' uservar
read -sp 'Password: ' passvar
echo 
echo Username : $uservar Password : $passvar
