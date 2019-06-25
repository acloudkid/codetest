docker run -d -p 909:80 --name rpweather rpweather:latest && \
docker exec -it rpweather sh /startcron.sh