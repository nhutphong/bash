#! bin/bash

varname="Dung"
echo "$varname or ${varname}"

nen dung -> ""

int dung: (()), []
if ((int,<,<=,>,>=)), if [-eq,-ne,-lt,le,-gt,-ge ]
-o=or
-a=and
! phu dinh

muon +,-,*,/, %... phai co: let z=a*b or them $[5+3]
string dung: [[]], []


if [[string, <,>]], 
if [=, ==, !=]
	
option: -z string la null
-f: la file,
-d: la directory
if [-z $1] : neu param 1 khong ton tai thi run(condition)


`cmd` or $(cmd)
for folder in `ls`;do;done
for folder in $(ls);do;done


echo 'Hello bash scripts'

echo BASH xin chao $BASH
echo BASH_VERSION xin chao $BASH_VERSION
echo HOME xin chao $HOME
echo PWD xin chao $PWD

name=Phong
old=25

echo ten ban la $name
echo tuoi ban la $old

echo "enter names: "
read name1 name2 name3 # input()

echo "Names: $name1, $name2, $name3"

arguments
$0=file_name,
 $1...$i=> cac params


echo $0, $1, $2, $3

args=("$@")

echo arg $@
echo len $#

array
[a-z], [A-Z], [1-9] =>
? => ky tu dac biet
* => tu 2 letter tro len

array=('thanh tan' 'thanh phong' 'ngoc hanh' 'dung cau')
# dung slice cho array and string => ${name[@]:1:3} => pos 1 lay 3 phan tu
# or ${name[*]:2} => tu pos 2 lay full_string
# @=*
echo "array_value_full: ${array[@]}"
echo "array_index_full: ${!array[@]}"
echo "array_len: ${#array[@]}"

declare -A arr_dict # bat buoc key&value
arr_dict=([nhut]="vo thanh phong" [tan]="nguyen thanh tan")
# unset array[2]

for i in ${!array[@]}; do
    echo $i: ${array[i]}
done

for i in {1..10..2}; do
    echo $i
done

num=1
while [ $num -le 5 ]; do
    echo $num
    ((num++))
done

for comm in ls cal date; do
    echo "===========================${comm}=========================="
    $comm
done

echo "pid is $$"
dirname: ${file_name%/*}
basename: ${file_name##*/}
echo {1..100..3}
{a..l..2}
{z..a..3}
seq 1 $1 => for i in  $(seq 1 3 $1) => chi dung cho int
name='vo thanh phong'
echo ${name,,} => lowercase
echo ${name^^} => uppercasek

=========================================================================

variable trong func la global=toan_cuc

change default shell=command:
chsh -s $(which bash)
chsh -s $(which zsh)

shift: tang vi tri param1 = value param2
value $1 bi mat di
$1 thanh $2
$2 thanh $3
loop: until nguoc lai voi while command1 false se chay do done;

gvim ~/. profile
export SHELL=/bin/bash
exec /bin/bash

export giong alias

`cmd`: important
'string', "string"
?: bat ky ky ru nao nhung chi 1 ky tu
$? = 0
[...]:
*: bat ky lay nhieu
$(seq 1 10)
[A-Za-z]: lam viec voi file and dir
[xyz]*: char bat dau = x or y or z
[!]: phu dinh
*[a-m4-7]: char end=[trong khoang da cho]
-z $1 : neu ko ton tai tham so $1
$0 -> file_name
$1..$9, ${10..} -> params cua func pa1 pa2 ...
$@ -> full params value
$# -> len(so params)
dirname: ${file_name%/*}
basename: ${file_name##*/}
var=nhut
temp=var, echo ${!var} => nhut
echo ${name:=zeze} => print zeze if name=null

IFS="," => split=cac chuoi

operator:
-a=&&
-o=||
read x
if [ $x == "Y" ] || [ $x == "y" ]
if [[ "$x" = "Y" || "$x" = "y" ]]

$((a +,-,*,/ b))
$[a +,-,*,/ b]


case esac:
;; break mac dinh
;& full ko quan trong dieu kien
;;& pattern




locate .bashrc => all vi tri file
trap [cmd] [SIGNALS]

/usr/bin
/bin
/etc
/etc/shells

