## Task 1.5 

A) How to start container with interactive sh process  
`docker run -it -rm --name 1.5 ubuntu:16.04 sh ´echo "Website?"; read website; echo "Searching.."; sleep 1; curl http://$website;´`

For some reason space after Website in echo caused container to close even if -it was used so i omitted that. 

B) How to start bash shell in running container named 1.5 and first do update and then install curl  
`docker container exec -it 1.5 sh`

B1. `apt-get update`  
B2. `apt-get install curl wget -y`


![](/images/1.5_a.jpg)


![](/images/1.5_b.jpg)
