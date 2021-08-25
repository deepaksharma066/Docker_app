#!/usr/bin/python3

import subprocess
import cgi

print("content-type: text/html")
print("Access-Control-Allow-Origin: *")
print()

doc = "sudo docker images"

cmd = subprocess.getoutput(doc)
print(cmd)
