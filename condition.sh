#!/bin/bash

: '

[]    single brackets
[[]]  double brackets
()    parentheses

'

car1="Lamborghini"
car2="Audi"
# check lenght car1 with length car2
if [[ "$car1" > "$car2" ]]; then
  echo "${car1} is greater than ${car2}."
elif [[ "$car1" < "$car2" ]]; then
  echo "${car2} is greater than ${car1}."
else
  echo "Both the cars are equal"
fi


VAR='GNU/Linux is an operating system'
# [[ condition co the dung regex ]]
if [[ $VAR == *"Linux"* ]]; then
  echo "VAR chua 'Linux'"
fi


VAR='GNU/Linux is an operating system'
if [[ $VAR =~ .*Linux.* ]]; then
  echo "=~ hahah"
fi


: '

  -z [string]	Returns TRUE if the string length is 0.
  -n [string]	Returns TRUE if the string length is not 0.

'
VAR=''
if [[ -z $VAR ]]; then
  echo "String is empty."
fi


VAR='Linuxize'
if [[ -n $VAR ]]; then
  echo "String is not empty."
fi


file="array.sh"
if [[ -e array.sh ]]; then
  echo "file ton tai"
else
  echo "file khong ton tai"
fi


