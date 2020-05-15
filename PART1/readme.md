## DevopswithDocker - PART 1
________________________
**Task 1.1:**  
 
![task1.1](/images/1.1.png)
______________________
**Task 1.2:**  

![task1.1](/images/1.2.jpg)  

________________________
**Task 1.3:**  

Secret message is: "This is the secret message"   

![task1.1](/images/1.3.jpg)      
________________________
**Task 1.4:**  

Secret message is: "Docker is easy"

![task1.1](/images/1.4.jpg)  
_________________________
**Task 1.5:**  

A) How to start container with interactive sh process  
`docker run -it -rm --name 1.5 ubuntu:16.04 sh ´echo "Website?"; read website; echo "Searching.."; sleep 1; curl http://$website;´`

For some reason space after Website in echo caused container to close even if *-it* was used so i omitted space. 

B) How to start bash shell in running container named 1.5 and first do update and then install curl  
`docker container exec -it 1.5 sh`

B1. `apt-get update`  
B2. `apt-get install curl wget -y`


![](/images/1.5_a.jpg)  

![](/images/1.5_b.jpg)  

___________________________
**Task 1.6:**

Command to build and run a new *docker-cloc*k image from *dockerfile*  

`docker build -t docker-clock .`  

Content of dockerfile

`# Load baseimage from Dockerhub`  
`FROM devopsdockeruh/overwrite_cmd_exercise`  
`# Pass -C flag to index.js`  
`CMD ["--clock"]`  

[dockerfile](./1.6/dockerfile)

_________________________________
**Task 1.7:**  

Running container named *curler* from image *curler:latest*

`docker run --name curler -it curler:latest`  

*Dockerfile* used for the image  
[dockerfile](./1.7/dockerfile)

*Script used*  
[curler.sh](./1.7/curler.sh)


___________________________________
**Task 1.8:**  

To create logs.txt file to local filesystem  
`touch ./logs.txt`  

To start a container named 1.8 and create a bind mount to current working directory for /usr/app/logs.txt inside container   
`docker run --name 1.8 --rm -it -v $(pwd)/logs.txt:/usr/app/logs.txt devopsdockeruh/first_volume_exercise`  

____________________________________
**Task 1.9:**  

Pull dockerimage to local machine  
`docker pull devopsdockeruh/ports_exercise`  

Start a container named 1.9, publish it to localport 8080 and map it to port 80 inside container    
`docker run --name 1.9 -it --rm -p 8080:80 devopsdockeruh/ports_exercise`  
__________________________________
**Task 1.10:**  
To start backend container with logs.txt on local filesystem using bindmount  
`docker run --name 1.11 -it --rm -v ${pwd}/logs.txt:/backend/logs.txt -p 8000:8000 devops-be-node`  

[dockerfile](./1.10/dockerfile)  
___________________________________
**Task 1.11:**  
To start backend container with logs.txt on local filesystem using bindmount    
`docker run --name 1.11 -it --rm -v ${pwd}/logs.txt:/backend/logs.txt -p 8000:8000 devops-be-node`  
[dockerfile](./1.11/dockerfile)  
___________________________________
**Task 1.12:**  

Commands to start Frontend and Backend containers

To start Frontend container  
`docker run --name 1.12fe -it -p 5000:5000 devops-fe-node`  

To start Backend container  
`docker run --name 1.12be -it -v ${pwd}/logs.txt:/backend/logs.txt -p 8000:8000 devops-be-node` 

[backend dockerfile](./1.12/backend/dockerfile)  
[frontend dockerfile](./1.12/frontend/dockerfile) 
___________________________________
**Task 1.13:**  

To build image  
`docker build -t springproject1.13 .` 

To run container   
`docker run -it --name 1.13 -p 8080:8080 springproject1.13`  

[dockerfile](./1.13/dockerfile) 
____________________________________
**Task 1.14:**   

To run container  
`docker run --name railsapp --rm -it -p 3000:3000 rubyapp.114:latest`  
[dockerfile](./1.14/dockerfile) 
_____________________________________
**Task 1.15:**  

Wikiapp  

Sample node app for searching information from wikipedia based given criteria  
https://hub.docker.com/r/jounijokelainen/wikiapp  

Usage  
Start container using command  
`docker run --name wikiapp -it --rm wikiapp *criteria*` 

Usage example  
eg. `docker run --name wikiapp -it --rm ilosaarirock`  

[dockerfile](./1.15/dockerfile)  
[wikiapp](./1.13/wikiapp.zip)  

_____________________________________
**Task 1.16:**  

Heroku App released at  
https://php-devops.herokuapp.com/  
  
NOTE: I originally named it as php-devops becouse i somehow thought i have to publish my own app and thought of php app. Only after i realized that i only need to publish prebuilt image to heroku. I hope missleading name is not a bin no no .
_____________________________________
**Task 1.17:**  

Development enviroment image for node js apps. 

Image 
https://hub.docker.com/r/jounijokelainen/node-env

Image is created from small node:alpine image and includes node dev enviroment with vim editor  

Image contains small sample node app (/user/app/index.js). By default image launches the app. App listens traffic in port 8080  

Additonal stuff from local computer can be placed in /usr/scr directory inside the container.   
Container can be launched with bind mount using command   
`docker run -d -p 8080:8080 --rm -v $(pwd)/scr:/usr/scr jounijokelainen/node-env`  

After launching container, editing can be done by:  

Launching shell process in running container and running vim editor  
`docker exec -it *container_id* sh`   

Or by running vim editor directly     
`docker exec -it *container_id* vim`   
