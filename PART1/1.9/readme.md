## Task 1.9

Pull dockerimage to local machine  
`docker pull devopsdockeruh/ports_exercise`  

Start a container named 1.9, publish localport 8080 and map it to port 80 in container  
`docker run --name 1.9 -it --rm -p 8080:80 devopsdockeruh/ports_exercise ` 
