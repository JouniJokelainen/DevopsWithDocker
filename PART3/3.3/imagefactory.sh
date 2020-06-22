#!/bin/bash
#------------------------------------------------------------------------------------
# Simple script that clones repo from Github to same directory with script, builds Docker image and then pushes it to Dockerhub
#------------------------------------------------------------------------------------

clear

# Ask Github repository name to make Dockerimage from
# ----------------------------------------------------
echo "Github user and repo information"
echo ------------------------------------------------
read -p "Github repository https clonelink (https://github.com/user/repository.git)?: " gitrepolink
read -p "Github username? " githubuser
read -p "Github reponame to be cloned? " gitrepo

# Clone Github repository to workdir
# ----------------------------------------------------
echo "Cloning Github repository... " $gitrepolink
echo ------------------------------------------------
rm -rf $gitrepo
git clone $gitrepolink
echo "Creating Dockerimage from Github repository cloned earlier.."
echo "dockerfile is expected to be in root for cloned repository.."

# Ask for Dockerimage name to be created
# ----------------------------------------------------
echo "Dockerfile name to be created"
echo ------------------------------------------------
read -p "Name for dockerimage to be created in format of dockeruser/imagename?:" dockerimagename

# Create docker image using dockerfile at workdir
# Dockerfile is copied to root from projectfolder
# ----------------------------------------------------

echo "Creating Docker image: " $dockerimagename
echo ------------------------------------------------
cp ./$gitrepo/dockerfile .
docker build -t $dockerimagename .
echo Following dockerimage created:
echo $dockerimagename

# Ask for Docker credentials
# -----------------------------------------------------
echo "Docker credentials"
echo ------------------------------------------------
read -p "Docker username? " dockerusername
docker login -u $dockerusername
docker push $dockerimagename

# Remove repofiles from working directory
# ----------------------------------------------------
rm -rf ./dockerfile
rm -rf ./demo