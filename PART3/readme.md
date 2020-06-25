## DevopswithDocker - PART 3

**Task 3.1**

Image sizes. Return back to our frontend & backend Dockerfiles and you should see the some mistakes we now know to fix.

I orginally built both images using node as base image. Becouse images seemed to be was huge, i wanted to test with Ubuntu:16.04.  

Image sizes before optimization  
_Frontend: 517 MB_  
_Backend:  336 MB_  

Image sizes after optimization  
_Frontend: 486 MB_  
_Backend:  307 MB_  


Optimized dockerfiles  
[Frontend dockerfile](./3.1/frontend/dockerfile)  
[Backend dockerfile](./3.1/backend/dockerfile)

____________________________________

**Task 3.2**  

Create deployment pipeline  

For this task, I used [course material](https://github.com/docker-hy/docker-hy.github.io) (_Jekyll website using Ruby_) as an web app. I forked it and cloned fork to my laptop. I edited text on first page a bit. Deployment pipeline was created with _Circleci_ and its [Heroku orb](https://circleci.com/orbs/registry/orb/circleci/heroku).  I needed to configure project settings by adding two enviroment variables: HEROKU_APP_NAME and HEROKU_APP_NAME. Value for first one is apps name in Heroku and value for second is Heroku accounts API key, which can be found from account settings - Account tab - API key.  

I also needed to create a [Procfile](./3.2/Procfile) and place it in apps rootfolder. Procfile tells Heroku how to run the app after its deployed by Circleci pipeline. Procfile is configured as follows _web
jekyll serve --no-watch --port $PORT --host 0.0.0.0_  
I also needed to turn on Herokus _free dyno_ in apps _Overview_ tab so _Procfile_ is actually executed by Heroku.  

I edited [_config.yml_](./3.2/config.yml) in _.circleci_ folder to use Circleci Heroku orb for deployint to Heroku.  

Also i edited \__config.yml_ file by adding -vendor line as list line in file. (# Exclude from processing). I also changed some other setting in file like url setting (url: "https://devopstask32.herokuapp.com/") and email.

Heroku app (edited course material) can be found from url
https://devopstask32.herokuapp.com/  

I used [these instructions](https://blog.gnclmorais.com/jekyll-heroku-the-simple-way) to setup app to Heroku. Instruction dont include Circleci deployment pipeline but it was not a biggie ...at least when using ready made orb for [Heroku](https://circleci.com/orbs/registry/orb/circleci/heroku)

   

____________________________________


**Task 3.3**  

Create a project that downloads a repository from github, builds a Dockerfile located in the root and then publishes it into Docker Hub. 

Since im not a developer all i could produce was a simple .sh script (_imagefactory.sh_). Its for building images inside container.   
[imagefactory.sh](./3.3/imagefactory.sh)  

Container that runs imagefactory.sh script is built using dockerfile below. Dockerfile creates an image FROM Ubuntu:18.04 and instals git and Docker to it. _Imagefactory.sh_ script is defined as entrypoint in deckerfile above so it starts right away.  
[dockerfile for building "imagefactory" image](./3.3/dockerfile)   

Container running the script is started by following command:  
`docker run --name *containername* --rm -v /var/run/docker.sock:/var/run/docker.sock -it *imagename*`

____________________________________


**Task 3.4**  

Make sure the containers start their processes as a non-root account.  

Frontend:  
I configured _frontend_ container to use user account named _app_ in _dockerfile_.  

[Frontend dockerfile](./3.4/front/dockerfile)  

Running `whoami` to check user account used for running container confirms that container uses _app_ account.

````
PS C:\temp\DevOpswithDocker\part3\3.4\frontend> docker exec -it front3.4 sh  
$ whoami  
app
````

Backend:  
Also _Backend_ container is configured to use user account named _app_ in related _dockerfile_.  

[Backend dockerfile](./3.4/back/dockerfile)  

````
PS C:\temp\DevOpswithDocker\part3\3.4\backend> docker exec -it back3.4 sh  
$ whoami  
app
````

____________________________________


**Task 3.5**  

Rather than going to FROM alpine or scratch, lets go look into docker-node and we should find a way how to run a container that has everything pre-installed for us.  

I choose FROM node:alpine to base image for both dockerimages.  

[Frontend Alpine dockerfile](./3.5/frontend/dockerfile) 

[Backend Alpine dockerfile](./3.5/backend/dockerfile) 

Image sizes before and after docker file changes from _Ubuntu:16.04_ to _Node:alpine_  

````
Ubuntu:
frontend       678MB
backend        333MB

Alpine:
frontend       522MB
backend        176MB
````  

____________________________________


**Task 3.6**  

Multi-stage builds. Lets do a multi-stage build for the frontend project since we’ve come so far with the application.  

Multistage dockerfile gave additional 20 MB space saving in image file size. I couldnt figure out anything fancy relating multistaging.  

[Multistage dockerfile for frontend](./3.5/frontend/dockerfile) 

____________________________________


**Task 3.7** 

Do all or most of the optimizations from security to size for any other Dockerfile you have access to, in your own project or for example the ones used in previous “standalone” exercises. Please document Dockerfiles both before and after.  

Multistage dockerfile was created for simple node web app.   
[Simpleweb](./3.7/simpleweb)  

[Multistage dockerfile for simpleweb](./3.7/dockerfile)  

Unfortynately size optimazationd didnt work in this case :(
simpleweb.3.7          120MB
simpleweb.3.7.multi    120MB

____________________________________


**Task 3.8** 

Familiarize yourself with Kubernetes terminology and draw a diagram. 

Was not a very easy task because Kubernetes seems to be quite a big concept with lot of moving parts. I absolytely need to put more effort into it.

[Diagram of Kubernetes](./3.8/3.8.png) 

