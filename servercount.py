
file = open ("serverlog.txt","r").read()
file = file.split('--')
file = list(map(lambda x:x.strip(),file))
file1=[]
for lin in file:
    if lin not in file1:
        file1.append(lin)
file1 = list(map(lambda x:x.strip(),file1))
file1 = file1[:-1]
for line in file1:
    count=0
    for line1 in file:
        if line==line1:
            count=count+1 
    print "The server", line , "get", count , "requests"

