import subprocess
import cgi

print("content-type: text/html")
print("Access-Control-Allow-Origin: *")
print()


doc = "sudo docker rm -f `docker ps -a -q`"

cmd = subprocess.getoutput(doc)
print(cmd)
