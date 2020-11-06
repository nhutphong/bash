#! /usr/bin/zsh


arr=("thanh phong" "dung cau")

for words in $arr
do
    echo $words

done


echo


name="nhut phong"

for c in {1..${#name}}
do
    echo "name[$c] = "$name[$c]
done

echo "zsh \$name[1,4] = " $name[1,4]