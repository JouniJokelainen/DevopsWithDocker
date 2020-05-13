## Task 1.17

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
