## DevopswithDocker - PART 2

**Task 2.1**

Create a docker-compose.yml file that starts *devopsdockeruh/first_volume_exercise* and saves the logs into your filesystem.  

[docker-compose.yml](./2.1/docker-compose.yml)  

____________________________________

**Task 2.2**  

Create a docker-compose.yml and use it to start the service so that you can use it with your browser.  

[docker-compose.yml](./2.2/docker-compose.yml)   
____________________________________

**Task 2.3**  

Configure the backend and frontend from part 1 to work in docker-compose  

[docker-compose.yml](./2.3/docker-compose.yml)  

____________________________________

**Task 2.4**  

Two containers seems to be enough what it comes to scaling up

I used docker-compose command seen below  

`docker-compose up -d --scale compute=2`  

[docker-compose.yml](./2.4/docker-compose.yml)

____________________________________

**Task 2.5**  

Configure a redis container to cache information for the backend  

[docker-compose.yml](./2.5/docker-compose.yml)  

____________________________________

**Task 2.6**

Configure backend to use Postgres database

[docker-compose.yml](./2.6/docker-compose.yml)  
____________________________________

**Task 2.7**  

Configure machine learning project (is it cucumber or moped)

[docker-compose.yml](./2.7/docker-compose.yml)  
____________________________________

**Task 2.8**  

Configure Frontend-Backend to use Nginx reverse proxy

[docker-compose.yml](./2.8/docker-compose.yml) 

[nginx.conf](./2.8/nginx.conf) 

____________________________________

**Task 2.9**  

At this time i needed to switch to Ubuntu on VirtualBox because Postgres persistent volumes caused problems with directory rights on Windows.

[docker-compose.yaml](./2.9/docker-compose.yaml) 
____________________________________

**Task 2.10**  

Some buttons may have stopped working in the frontend + backend project. Make sure that every button for exercises works.  
Enviroment variables were removed from backend dockerfile (_ENV API_URL=http://localhost:8000_) and frontend dockerfile (_ENV FRONT_URL=http://localhost:5000_).   

Images were rebuilt through docker-compose.  

[docker-compose.yml](./2.10/docker-compose.yml) 

[backend dockerfile](./2.10/dockerfile/backend/dockerfile)  

[frontend dockerfile](./2.10/dockerfile/frontend/dockerfile)  

 
