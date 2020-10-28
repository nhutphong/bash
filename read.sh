#! /usr/bin/zsh

echo "Tao la \$*"
echo $#
for str in "$*"
do
    echo $str
done
echo

echo $#
echo "Tao la \$@"
for str in "$@"
do
    echo $str
done


# dung bash read.sh
# read -p 'Username: ' uservar
# read -sp 'Password: ' passvar
# echo 
# echo Username : $uservar Password : $passvar


# dung zsh read.sh
# read "variable_name? blabla..." no option -p
read "username?What your name ? "
echo $username

read -s "pass? password: "
echo $pass
