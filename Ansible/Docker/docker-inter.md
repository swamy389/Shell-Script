docker images ---> list down the imagesin the server

docker pull image-name ---> download the image from docker hub

docker rm `docker ps -a -q` ---> removing all containers 

docker rmi -f $(docker images -aq)  ---> removing all images 

docker run -p <host-port>:<container-port> image-name

docker run -p 80:80 nginx

docker run -d ---> detach the screen and run the background

docker exec - it <id> bash ---> excuting container 

### how to create image?

docker file is declarative way of creating images.

we can build the images and we can push to any docker registry.

### how to build docker image

docker build -t image-name:version .

docker build -t centos:8 .