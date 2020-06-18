## DevopswithDocker - PART 3

**Task 3.1**

I orginally built both images using node as base image. Becouse images seemed to be was huge, i wanted to test with Ubuntu:16.04.  

Image sizes before optimization  
_Frontend: 517 MB_  
_Backend:  336 MB_  

Image sizes after optimization  
_Frontend: 486 MB_  
_Backend:  307 MB_  


Optimized dockerfiles  
[Frontend dockerfile](./3.1/frontend/dockerfile)  
[Backend dockerfile](./3.1/backend/dockerfile)

____________________________________

**Task 3.2**  

I used edited course material as an web app for this task. Deployment pipeline was created with Circleci and its heroku orb. 

Heroku app (edited cource material) can be found from url
https://devopstask32.herokuapp.com/

[docker-compose.yml](./3.2/docker-compose.yml)   
____________________________________




