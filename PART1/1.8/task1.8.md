## Answer 1.8  

To create container with logs  
`docker run --name 1.8 -it devopsdockeruh/first_volume_exercise`

*Wrote to file /usr/app/logs.txt*

To copy logs to local folder  
`docker cp "1.8:/usr/app/logs.txt"`
