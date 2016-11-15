# Base OS is Ubuntu
FROM ubuntu:14.04 

#Setting Deploy user to an environment variable 
ENV user=deploy
ENV path=/u01/apps/qwinix/

# Update the cache 
RUN apt-get update 

#Create a User called deploy 
RUN useradd -ms /bin/bash $user

# Set the current working directory 
WORKDIR /home/$user

# Create a directory structure with a default path 
RUN mkdir -p $path

#Switch to user 'root' to change the user permissions 
USER root
RUN chown -R $user.$user /u01

# switch back to deploy in the end 
USER $user

#CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"] 
