USERID=1000
GROUPID=1000
echo "Create User = $USERID. Group = $GROUPID"
groupadd -g $GROUPID jagaimo
useradd -m -b /home/jagaimo -s /bin/bash -u $USERID -g $GROUPID jagaimo

