## Docker-Compose.yml

version: '3.5'  

services: 
    whoami: 
      image: devopsdockeruh/ports_exercise
      ports: 
        - 8000:80
