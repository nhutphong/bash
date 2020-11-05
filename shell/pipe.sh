

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
cmd > out.log # output vao out.log
cmd 1> out.log # output vao out.log

cmd > out.log 2>&1 # error vao out.log


stdout vao stderr vao out.log
cmd > out.log 2> out.log
cmd 1> out.log 2> out.log


cmd > /dev/null 2>&1


ls -l video.mpg blah.foo > myoutput 2>&1
ls &> file_name => stdout and stderr vao file_name


ls 2>&1 => error_ls vao out_ls chinh no ko tao file
ls >&2 => output tranh tao file 


echo "xin cho linux" >> file_name(append content)


