#!/bin/bash


#khi muon lay value cua var thi dung name=$var
# `ls` <=> $(ls) <=> <$(cmd)>

# operator
# echo `expr 2 + 2` #phai co space
# `expr $a \* $b` #phep nhan
# [ $a -gt 10 ] # co  khoang 1 space [<space>$a -ge 10<space>]
# (( $a > 10 )) ; (( a++ )) <=>  a=$(($a + 1))
# a=$((3+1)); #a=4
# b=$[4+5]; #b=9
# ((a++))

# unset var; #delete var

# int dung: if (( 3>4 )), if [ 8 -lt 10 ] <=> [ -le, ge,.., ] chi dung duoc cho int
# if ((int,<,<=,>,>=)), if [ -eq,-ne,-lt,le,-gt,-ge ]

# -o =or
# -a =and
# !  phu dinh

# muon +,-,*,/, %... phai co: let z=a*b or them $[5+3]
# string dung: [[]], []

# if [[ -lt, -le,.., <, <=, >, ... ]] dung cho ca int va string
# string &&, || <=> and, or
# if [[string, <,>]], if [=, ==, !=] 
# option: -z string la null
# -f: la file, -d: la directory
# if [-z $1] : neu param 1 khong ton tai thi run(condition)

# array=(nhut phong hanh tan) or names=("thanh phong" "tan heo" "chi thong")
# ${array[@]} -> full array
# ${#array[@]} -> len array




# function
greeting() {
  echo "Hello $1"
}
greeting "Joe" # truyen argument=$1 cho function
echo
select_do_done(){
    select DRINK in tea cofee water juice appe all none
    do
 
        case $DRINK in
        tea|cofee|water|all)
            echo "Go to canteen"
            ;;
        juice|appe)
            echo "Available at home"
            ;;
        none)
            break
            ;;
        *) echo "ERROR: Invalid selection"
            ;;
        esac
 
    done
    #loop vo tan
}


echo "TAO LA case esac"
case "$1" in
   1) echo 'Monday' ;;
   2) echo 'Tuesday' ;;
   3) echo 'Wednesday' ;;
   4) echo 'Thursday' ;;
   5) echo 'Friday' ;;
   6) echo 'Saturday' ;;
   7) echo 'Sunday' ;;
   *)
   echo "Don't match anything"
#    exit 1 #thoat shell
;;
esac
echo -e


# for (( i=0; $i < $elements; i++ ))
# do
#    echo ${array[$i]}
# done

echo "TAO LA for"
for var in Mon Tue Wed Thurs Fri Sat Sun
do
   echo $var
done
echo -e

echo "tao la for $1"
for item in {1..5}; do
    echo $item
done
echo -e

echo "TAO LA while -le"
a=0
while [ $a -le 5 ]
do
   echo $a
#    ((a++))
   a=$(($a + 1))
done
echo -e

echo "TAO LA until [ o -gt 5 ]; condition=false run do;done"
a=0
until [ $a -gt 5 ] # condition= false thi run do;done
do
   echo $a
   ((a++))
done
