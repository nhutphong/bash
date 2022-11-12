#!/usr/bin/bash

: '
IFS=" "
$#  Number of arguments
$*  All positional arguments (as a single word) use with IFS
$@  All positional arguments (as separate strings)
$1  First argument
$_  Last argument of the previous command

$$          To know about the process id of the current shell
$? and $!   Exit status id and Process id of the last command
$- and $_

'

IFS=";"
echo -e "\$* \t $*" # IFS
echo -e "\$@ \t $@"
echo -e "\$#=len \t $#"
echo -e "\$$ \t $$"
echo -e "\$! \t $!"
echo -e "\$? \t $?"

echo
Fruits=('Apple' 'Banana' 'Orange')
Fruits[0]="Apple"
Fruits[1]="Banana"
Fruits[2]="Orange"

echo ${Fruits[@]}           # All elements, space-separated
echo ${!Fruits[@]}          # All indexs
echo ${#Fruits[@]}          # length elements
echo

echo ${Fruits[0]}           # Element #0
echo ${Fruits[-1]}          # Last element
echo

echo ${#Fruits}             # len(Fruits[0])
echo ${#Fruits[3]}          # String length of the Nth element
echo ${Fruits[@]:1:2}       # Range (from position 3, length 2)
echo


array=(This is some Text)

echo "${array[@],}"     #this is some text #lowercase title
echo "${array[@],,}"    #this is some text #lowercase full
echo "${array[@]^}"     #This Is Some Text #uppercase title
echo "${array[@]^^}"    #THIS IS SOME TEXT #uppercase full
echo "${array[2]^^}"    #SOME
echo


echo "dict=map"
declare -A sounds
sounds[tiger]="con-ho"
sounds[lion]="su-tu"
sounds[cat]="con-meo"
sounds[dog]="con-cho"

echo ${sounds[tiger]} # ho's sound
echo ${sounds[@]}   # All values
echo ${!sounds[@]}  # All keys
echo ${#sounds[@]}  # len of elements
unset sounds[tiger]   # Delete ho
echo

echo "values:"
for val in "${sounds[@]}"; do
  echo $val
done

echo

echo "keys:"
for key in "${!sounds[@]}"; do
  echo $key
done
