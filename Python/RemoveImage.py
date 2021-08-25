#!/usr/bin/python3

import subprocess
import cgi

print("content-type: text/html")
print("Access-Control-Allow-Origin: *")
print()

f = cgi.FieldStorage()
out = f.getvalue("x")

doc = "sudo docker rmi -f {}".format(out)

cmd = subprocess.getoutput(doc)
print(cmd)
