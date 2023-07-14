#Specify apache image
FROM ubuntu
LABEL description " containarize apache" 
# you can have more than one label 
# RUN allow to run a cmd inside the sheld 
RUN apt-get update -y
RUN apt-get install httpd -y

# the copy cmd allow to copy from your computer to docker
COPY index.html /var/wwww/html

# open the port 80
EXPOSE 80

# entrypoint means run httpd when the container starts
ENTRYPOINT [ "/usr/sbin/httpd" ]

#run everything cmd in the background
CMD [ "-D", "FOREGROUND" ]
