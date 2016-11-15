# Docker
Repo to experiment with Docker 

Commonly used commands 

1 ) docker build -t <name to be give to the docker image> -f <path to the dockerfile or simply use '.' if in the current directory> 
2 ) docker run -it --name <name of the docker container> <image name> 
    
    Optional use the flag -p to specify the port 
    docker run -it --name <name of the docker container> -p 80:80 <image name>
