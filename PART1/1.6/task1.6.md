## Vastaus

Command to build new *docker-cloc*k image from *dockerfile*  

`docker build -t docker-clock .`  

Content of dockerfile

`# Load baseimage from Dockerhub`  
`FROM devopsdockeruh/overwrite_cmd_exercise`  
`# Pass -C flag to index.js`  
`CMD ["--clock"]`  
