



"""
	r=4
	w=2
	x=1

	Với file => -rwxrwxrwx
	Với folder => drwxrwxrwx

"""

chmod 644 example.txt
or
chmod u=rw,g=r,o=r example.txt


"""
	u = user
	g = group of user
	o = other ko thuoc ve group of user
"""

chmod u=rwx,g=rw,o=rw example.txt
chmod u=rwx,go=rw example.txt

chmod u+x example.txt # user read
chmod o-wx example.txt #  other cam write va execute

# 
chmod -R 755 folder # set permission nhieu files  -R
