## Commands to start Frontend and Backend containers

To start Frontend container  
`docker run --name 1.12fe -it -p 5000:5000 devops-fe-node`  

To start Backend container  
`docker run --name 1.12be -it -v ${pwd}/logs.txt:/backend/logs.txt -p 8000:8000 devops-be-node`  
