#!usr/bin/bash

#pipeline

: `
  cmd thuong co 3 thu
    stdin=0 is content=strings ,filename, la data dau vao cho cmd
    stdout=1 is output ra terminal
    stderr=2 is output ra terminal
`

redirection:

stdout_cmd nay la stdin_cmd kia: giua 2 cmd
stdout_cat is input cho stdin_grep
cat test.sh | grep "echo"


output test.sh cho input_grep: giua cmd va file
grep "echo" < test.sh # chi dung duoc file
grep "echo" test.sh # chi dung duoc file, khong can tag= '<'


#  heredoc> co the hieu la buffer-content=filecodesh temp de cho cmd truoc dung
#  code from line29 to line32 vao file out.sh
#  render backtic `cmd`, $cmd, $(cmd)
cat <<STOP > out.sh
#!usr/bin/bash
echo $HOME
`js`
`pwd`
STOP

# argument la quote or double quote la "raw string, not render varname  
cat <<"EOF"
$(echo Hello)
$(whoami)
$PWD
EOF


output_cmd vao file
cmd > out.log # output vao out.log
cmd 1> out.log # output vao out.log

cmd > out.log 2>&1 # error vao out.log

# > ==== 1>, dung > cho nhanh
stdout-stderr of cmd vao out.log
cmd > out.log 2> out.log      # dung '>' cho nhanh
cmd 1> out.log 2> out.log


cmd > /dev/null 2>&1


ls -l video.mpg blah.foo > myoutput 2>&1
ls &> file_name		 stdout and stderr vao file_name


ls 2>&1	     error_ls vao out_ls chinh no ko tao file
ls >&2	     output tranh tao file 

#append content
echo "xin cho linux" >> output.log
