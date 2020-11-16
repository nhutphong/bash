#! /usr/bin/bash

# func_name arg1 arg2 arg3 ...


func_one(){
    echo "nguyen thanh dung" # 3 argument
    echo "nguyen chi thong cau" # 4 argument
}

func_two(){
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

