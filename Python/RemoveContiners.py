import subprocess
import cgi

print("content-type: text/html")
print("Access-Control-Allow-Origin: *")
print()

f = cgi.FieldStorage()
out = f.getvalue("x")

doc = "sudo docker rm -f {}".format(out)

cmd = subprocess.getoutput(doc)
print(cmd)
