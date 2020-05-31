## Task 2.4  

Task is to scale the compute containers so that the button in the application turns green.  

Seems that 2 instances of loadbalancer is enough to achieve the goal to get the button to go green 

`docker-compose up -d --scale compute=2`  

[docker-compose.yml](./docker-compose.yml)  

