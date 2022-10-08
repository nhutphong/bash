#! /usr/bin/bash


arr=("thanh phong" "dung cau")

for words in ${arr[@]}
do
    echo $words
done


echo


name="nhut phong"


len=${#name}
((len--))
for i in `seq 0 $len`
do
    echo "name[$i] = " ${name:$i:1}
done

echo "bash \${name::4} = " ${name::4}