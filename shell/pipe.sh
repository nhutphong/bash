

new file:
touch file_name


#pipeline

"""
	stdin=0
	stdout=1
	stderr=2

"""
redirection:

stdout_cmd nay la stdin_cmd kia: giua 2 cmd
stdout_cat cho stdin_grep
cat test.sh | grep "echo"


output test.sh cho input_grep: giua cmd va file
grep "echo" < test.sh # chi dung duoc file


code trong terminal xuat ra output.log
cmd <<STOP > output.log
line1
line2
line3
STOP
# ctrl+d



output_cmd vao file
cmd > file
cmd 1> file


stdout vao stderr vao out.log
cmd > out.log 2> out.log
cmd 1> out.log 2> out.log
cmd > out.log 2>&1
cmd > /dev/null 2>&1


ls -l video.mpg blah.foo > myoutput 2>&1
&> file_name => stdout and stderr vao file_name


>&1 => output tranh tao file
>&2 => output tranh tao file


echo "xin cho linux" >> file_name(append content)


open file in terminal:
cat: file_name_nho, show contents dau->end
tac: show contents end->dau

more: mo file_lon theo page
file:
less:  mo file trong terminal scroll tu tu
head: 10 dong dau
tail: print 10 lines cua file| tail: mo file, in 10 dong cuoi
nl: lines number => int
more: page number => %int


tim kiem:
wc file_name: dem so: <lines, words, chars>
wc -l < path_to_file=source
grep: tim kiem contents va highlight no trong filev
awk <-options> '{print $1}' => xu ly file text rat manh, la 1 ngon ngu lap trinh
sed 's/regex /g' stdin=file: find, replace,
 /g=replace, /d=delete


sap xep:
sort, ...,  trong file
sort:
cut -d "," -f 1 name.txt => remove comma(,) -> -f 1 la 1 tab
tr: replace text stdin => new_text stdout


tim kiem files and dirs
find <path,...,> <options> <contents>  => tim file trong dir
find path -name lulu\* => tim lulu...
-iname phu dinh
-regex, -iregex
-type <bcdpfls>
-mtime <+,- hour> +=sau24h, -=truoc24h
-size
find . -name \? -daystart -mtime +0 -mtime -3
locate <path to path>


so sanh contents file:
cmp <options>
diff file1 file2


network:
nc
nmap


set `cmd`: $1,$2... la stdout_cmd


split: chia nho file
cat file* > new_join_file