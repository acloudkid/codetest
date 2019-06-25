#Docker container to produce weather in Los Angeles, US

Prerequisits:
Docker - brew install docker
Git - brew install git

# Fabric - brew install fabric

Clone repository


Build docker container:
docker build . -t rpweather:latest

Run docker container:
docker run -d -p 909:80 --name rpweather rpweather:latest

Enter docker container:
docker exec -it rpweather /bin/bash
