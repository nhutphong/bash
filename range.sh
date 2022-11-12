#! /usr/bin/bash

:<<"comment"

comment

echo "string list"
echo {I,want,my,money,back}
echo

echo _{I,want,my,money,back}
echo

echo "{start..stop} #{start..stop..step}"
echo "{5..10} = " {5..10}
echo "{a..f} = " {a..f}
echo "{01..10} = " {01..10}
echo "{0001..5} = " {0001..5}
echo "{1..10..2} = " {1..10..2}
echo "{10..1..-2} = " {10..1..2}
echo "{a..z..3} = " {a..z..3}
echo "{Z..A..3} = " {Z..A..3}
echo

echo "1.{0..9}"
echo 1.{0..9}
echo

echo "nested array, giong nhu co 2 loop for"
echo "{A..Z}{0..9}"
echo {A..Z}{0..5}
echo

echo "array1 + array2"
echo "{{A..Z},{a..z}}"
echo {{A..Z},{a..z}}
echo

for name in profile{1..5}.png; do
    # Print the filename
    echo "Filename: $name"
done
echo

# Define the range with alphabets
for val1 in {A..C}
do
    # Define the range with numbers
    for val2 in {01..3}
    do
        # Print the value by conctenating the alphabet and number
        echo $val1$val2
    done
       
done
echo

# create  subfolders
# mkdir /home/bash/test/{foo,bar,baz,cat,dog}

echo "use seq commmand"
echo "seq 4"
seq 4
echo 

echo "seq 5 14"
seq 5 14
echo

echo "seq command, when use increment phai co dau tru -step"
echo "seq 10 -2 1"
seq 10 -2 1
echo 

echo "seq -s "*" 5"
seq -s "*" 5
echo

echo "seq -f "%g/04/2018" 10"
seq -f "%g/04/2018" 10
echo

echo "seq -f "%f" 3 0.8 6"
seq -f "%f" 3 0.8 6
echo 


