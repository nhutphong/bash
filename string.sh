#!/usr/bin/bash

: '
FOO="Hello World"
${FOO%suffix}	Remove suffix
${FOO#prefix}	Remove prefix
${FOO%%suffix}	Remove long suffix
${FOO##prefix}	Remove long prefix
${FOO/from/to}	Replace first match
${FOO//from/to}	Replace all
${FOO/%from/to}	Replace suffix
${FOO/#from/to}	Replace prefix

${#FOO}	Length of $FOO

${FOO:-val}	$FOO, or val if unset (or null)
${FOO:=val}	Set $FOO to val if unset (or null)
${FOO:+val}	val if $FOO is set (and not null)
${FOO:?message}	Show error message and exit if $FOO is unset (or null)


STR="HELLO WORLD!"
echo ${STR,}   #=> "hELLO WORLD!" (lowercase 1st letter)
echo ${STR,,}  #=> "hello world!" (all lowercase)

STR="hello world!"
echo ${STR^}   #=> "Hello world!" (uppercase 1st letter)
echo ${STR^^}  #=> "HELLO WORLD!" (all uppercase)
'

name="John"
length=2
echo ${name}
echo ${#name}	#len(name)
echo ${name:0:length}  #=> "Jo"
echo ${name/J/j}    #=> "john" (substitution)
echo ${name:0:2}    #=> "Jo" (slicing)
echo ${name::2}     #=> "Jo" (slicing)
echo ${name::-1}    #=> "Joh" (slicing)
echo ${name:(-1)}   #=> "n" (slicing from right)
echo ${name:(-2):1} #=> "h" (slicing from right)
echo ${food:-Cake}  #=> $food or "Cake"
echo

STR="Hello world"
echo ${STR:6:5}   # "world"
echo ${STR: -5:5}  # "world"
echo

STR="/path/to/foo.cpp"
echo ${STR%.cpp}    # /path/to/foo 		# remove .cpp
echo ${STR%.cpp}.o  # /path/to/foo.o 	# remove .cpp rename thanh .o
echo ${STR%/*}      # /path/to			# remove all sau last / cuoi cung
echo

echo ${STR##*.}     # cpp (extension)	# remove all before .
echo ${STR##*/}     # foo.cpp (basepath)# remove all before /
echo

echo ${STR#*/}      # path/to/foo.cpp

echo ${STR/foo/bar} # /path/to/bar.cpp	#rename foo thanh = bar
