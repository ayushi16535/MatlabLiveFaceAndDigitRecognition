def myfunc():
	x = [1,2,3,4,5]
	y = list(range(5))
	for i in x:
		print x[i-1]
	even_no = [i for i in x if i%2 == 0 ]
	print even_no,y
	return
	
myfunc()
