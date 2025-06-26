docker images ---> list down the imagesin the server

docker pull image-name ---> download the image from docker hub

docker rm `docker ps -a -q` ---> removing all containers 

docker rmi -f $(docker images -aq)  ---> removing all images 

docker run -p <host-port>:<container-port> image-name

docker run -p 80:80 nginx

docker run -d ---> detach the screen and run the background

docker exec - it <id> bash ---> excuting container 