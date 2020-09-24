#!/bin/bash


clock() {
# stop=0
    while true
    do
        # -n bo newline, -e enable \a, \r,... dac biet
        echo -ne "\r" `date +%H:%M:%S` >> clock.txt
        sleep 1
        
    #     # [ $stop -ge 60 ] <=> (( $stop >= 60 ))
    #     if  [ $stop -ge 60 ]; then
    #         break
    #     fi
        
    done
}
clock #run function clock
