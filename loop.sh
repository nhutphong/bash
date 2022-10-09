#! /usr/bin/zsh

# function
greeting() {
  echo -e "tao la funciton greeting \$1=$1 "
}
greeting "Joe" # truyen argument=$1 cho function

echo

echo "func_select_do_done -> select 1 to 6 or 7=exit"
func_select_do_done(){
    select DRINK in tea cofee water juice apple all exit
    do
 
        case $DRINK in
        tea|cofee|water|all) # in 1 2 3 6
            echo "ttea|cofee|water|all"
            ;;

        juice|apple) # in  4 5
            echo "joice|apple"
            ;;

        exit) # in 7
            echo "exit ban da gap break"
            break # exit select
            ;;

        *) #others
            echo "ERROR: Invalid selection"
            ;;

        esac
 
    done
    #loop vo tan
}

func_select_do_done

echo

echo "TAO LA: case esac"
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

echo "TAO LA: for var in Mon Tue Wed Thurs Fri Sat Sun"
for var in Mon Tue Wed Thurs Fri Sat Sun
do
   echo $var
done

echo -e


echo "tao la: for item in {1..5}"
for item in {1..5}; do
    echo $item
done

echo -e


echo "TAO LA: while [[ $a -le 5 ]]"
a=0
while [[ $a -le 5 ]]
do
   echo $a
   ((a++))
   # a=$(($a + 1))
done


echo -e


echo "TAO LA: until [[ o -gt 5 ]]; condition=false run do;done"
a=0
until [[ $a -gt 5 ]] # condition= false thi run do;done
do
   echo $a
   ((a++))
done

echo

echo "for in"
for ((i = 0 ; i < 10 ; i++)); do
  echo $i
done