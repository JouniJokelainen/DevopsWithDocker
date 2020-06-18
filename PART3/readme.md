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





