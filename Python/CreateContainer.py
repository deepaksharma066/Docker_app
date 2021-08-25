import subprocess
import cgi

print("content-type: text/html")
print("Access-Control-Allow-Origin: *")
print()

f = cgi.FieldStorage()
out = f.getvalue("x")
out1 = f.getvalue("y")

doc = "sudo docker run -dit --name {} {}".format(out , out1)

cmd = subprocess.getoutput(doc)
print(cmd)
