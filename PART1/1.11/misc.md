## To start backend with logs.txt on local filesystem using bindmount
`docker run --name 1.11 -it --rm -v ${pwd}/logs.txt:/backend/logs.txt -p 8000:8000 devops-be-node`
