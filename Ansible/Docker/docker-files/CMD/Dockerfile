FROM almalinux:8 
# almalinux same as centos 
RUN yum install nginx -y
RUN echo "hello, welcome to docker file a way to creating images" > /usr/share/nginx/hello.html
CMD [ "nginx", "-g", "deamon off;" ]