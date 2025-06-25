after installation of docker run this below command
docker ps 
we need to add user to docker 
usermod -aG docker centos 
logout and again login and check 


docker pull nginx
docker pull nginx:perl 

docker image-name:version

docker create [image-id] ---> it will create docker container 

docker ps ---> list down running containers
docker ps -a --> list down all containers including ruuning,stop,exit,created

docker start container id ---> it will run the container 

pull image + create container + run container

docker run = pull image + create container + run container 

removing images command = docker rmi -f $(docker images -aq)

deleting container == docker rm `docker ps -a -q`

docker run -p <host-port>:<container-port> image-name

docker run -p 80:80 nginx