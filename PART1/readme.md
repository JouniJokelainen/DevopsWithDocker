## PART 1

**Task 1.1:**  
  
![task1.1](/images/1.1.png)

**Task 1.2:**  

![task1.1](/images/1.2.jpg)  

**Task 1.3:**  

![task1.1](/images/1.3.jpg)  

**Task 1.4:**

![task1.1](/images/1.4.jpg)  

**Task 1.5:**  

A) How to start container with interactive sh process  
`docker run -it -rm --name 1.5 ubuntu:16.04 sh ´echo "Website?"; read website; echo "Searching.."; sleep 1; curl http://$website;´`

For some reason space after Website in echo caused container to close even if -it was used so i omitted that. 

B) How to start bash shell in running container named 1.5 and first do update and then install curl  
`docker container exec -it 1.5 sh`

B1. `apt-get update`  
B2. `apt-get install curl wget -y`


![](/images/1.5_a.jpg)

![](/images/1.5_b.jpg)

**Task 1.6:**

Command to build new *docker-cloc*k image from *dockerfile*  

`docker build -t docker-clock .`  

Content of dockerfile

`# Load baseimage from Dockerhub`  
`FROM devopsdockeruh/overwrite_cmd_exercise`  
`# Pass -C flag to index.js`  
`CMD ["--clock"]`  

![dockerfile](DevopsWithDocker/PART1/1.6/dockerfile)


**Task 1.7:**

**Task 1.8:**

**Task 1.9:**

**Task 1.10:**

**Task 1.11:**

**Task 1.12:**

**Task 1.13:**

**Task 1.14:**

**Task 1.15:**

**Task 1.18:**
