## Answer 1.10

### Base image
`FROM node:latest`

### Set working directory
`WORKDIR /frontend`

### Copy project file to working directory
`COPY ./frontend-example-docker-master /frontend`

### Install packages and depencies
`RUN npm install`

### Expose port 5000
`EXPOSE 5000`

### Build and server in production mode in folder /dist
`CMD npm start`  
