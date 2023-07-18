#Specify apache image
FROM centos:7
LABEL description="containarize apache" 
# you can have more than one label 
# RUN allow to run a cmd inside the sheld 
RUN yum -y update
RUN yum -y install httpd

# the copy cmd allow to copy from your computer to docker
WORKDIR /home/ec2-user/usr 
COPY index.html /var/wwww/html/

# open the port 80
EXPOSE 80

# entrypoint means run httpd when the container starts
ENTRYPOINT [ "/usr/sbin/httpd" ]

#run everything cmd in the background
CMD [ "-D", "FOREGROUND" ]