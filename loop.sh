!/bin/bash

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
