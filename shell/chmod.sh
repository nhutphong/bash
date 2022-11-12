: '

  r=4 		read view file
  w=2 		write modify file
  x=1 		execute file

  Với file => -rwxrwxrwx
  Với folder => drwxrwxrwx

  r(ead) has the value of 4
  w(rite) has the value of 2
  (e)x(ecute) has the value of 1
  no permission has the value of 0

  7  	rwx
  6  	rw-
  5  	r-x
  4 	r--

  -rwxrwxrwx	'-' is file
  drwxrwxrwx	'd' is directory=folder

'


chmod 644 example.txt

chmod u=rw,g=r,o=r example.txt
: '

  u = user
  g = group of user
  o = other ko thuoc ve group of user

'

chmod u=rwx,g=rw,o=rw example.txt
chmod u=rwx,go=rw example.txt

chmod u+x example.txt # user read
chmod o-wx example.txt #  other cam write va execute

# flag: -R apply lun cho subfolders, files...
chmod -R 755 folder #u=rwx, g=r-x, o=r-x 
