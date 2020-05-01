## Answer 1.8  

To create logs.txt file to local system  
´touch ./logs.txt´  

To start a container named 1.8 and create a bind mount to current workind direotry for logs.txt   
´docker run --name 1.8 --rm -it -v $(pwd)/logs.txt:/usr/app/logs.txt devopsdockeruh/first_volume_exercise´  
