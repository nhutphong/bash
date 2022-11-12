#!/usr/bin/bash

: ' 

$0: Chứa toàn bộ văn bản
$1: Chứa văn bản trường đầu tiên
$2: chứa văn bản trường thứ hai
$(2+3): Kết quả của các biểu thức được sử dụng, đưa ra trường thứ năm
NF: là một biến tích hợp có chứa số lượng các trường trong bản ghi hiện tại. Vì vậy $NF đưa ra
	trường cuối cùng và $(NF-1) sẽ đưa ra trường cuối cùng thứ hai.

awk '/manager/ {print}' employee.txt 

#con nhieu nua ...
'

awk '{print}' text/awk.txt
echo

awk '/MANAGER/ {print}' text/awk.txt 
echo

echo "column 1 va col 4"
awk '{print $1,$4}' text/awk.txt 
echo	

echo "assign index use NR = auto index"
awk '{print NR,$0}' text/awk.txt 
echo

echo "use \$NF = last field"
awk '{print $1,$NF}' text/awk.txt
echo

echo "line3 toi line5"
awk 'NR==3, NR==6 {print NR,$0}' text/awk.txt 
