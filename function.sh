#!/usr/bin/bash

# call func_name khong can dau ngoac tron
# func_name arg1 arg2 arg3 ...


func_one(){
    echo "one two three" # 3 arguments
    echo "four five six seven" # 4 argumentss
}

func_two(){
    #echo == yield python

    echo "arg1 = " $1
    echo "arg2 = " $2
    echo "arg3 = " $3
    echo "arg4 = " $4
    echo "arg5 = " $5
    echo "arg6 = " $6
    echo "arg7 = " $7
}

#backtick `cmd=expresion=func_name` run function 
# $(cmd=expresion=func_name) run funciton 
func_two `func_one`

