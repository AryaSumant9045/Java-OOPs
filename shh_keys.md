1. nyii shh keys banana (in git bash):
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"

write enter when asking for file name and when asking for passphase 

2. abb windows powershell kholl in as adminstration (ye dono commnad challa de ):
# start the ssh-agent in the background
Get-Service -Name ssh-agent | Set-Service -StartupType Manual
Start-Service ssh-agent
ssh-add $env:USERPROFILE\.ssh\id_rsa
ssh-add -l
type $env:USERPROFILE\.ssh\id_rsa.pub   // ye wali command ssh key dega usko isko github ke setting mai ja kar ssh key section mai add kar do

3. abb jiss folder ko tu github pe live karwna chata hai usko matlab likhte hii github pr automatically puch ho vha "auto_push.sh" naam se ekk file bana orr isme ye code likh de 

"""
#!/bin/bash

while true
do
  git add .
  git commit -m "auto update $(date '+%Y-%m-%d %H:%M:%S')"
  git push origin main
  sleep 60   # 1 minute ke gap par push karega
done
"""

And ye command run kar de git bash mai:
#!/bin/bash
git add .
git commit -m "Auto update: $(date '+%Y-%m-%d %H:%M:%S')"
git push origin main

chmod +x auto_push.sh
 ./auto_push.sh

