#! /usr/bin/bash

echo "string list"
echo {I,want,my,money,back}
echo

echo _{I,want,my,money,back}
echo

echo "range"
echo "{5..10} = " {5..10}
echo "{a..f} = " {a..f}
echo "{01..10} = " {01..10}
echo "{0001..5} = " {0001..5}
echo {1..10..2}
echo {a..z..3}
echo

echo "1.{0..9}"
echo 1.{0..9}

echo
echo "{A..Z}{0..9}"
echo {A..Z}{0..5}

echo 
echo "{{A..Z},{a..z}}"
echo {{A..Z},{a..z}}

# create  subfolders
# mkdir /home/bash/test/{foo,bar,baz,cat,dog}
