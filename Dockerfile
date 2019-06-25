#Docker hub image for Nginx:latest
FROM nginx:latest

#Define Working directoryd
WORKDIR .

#Add weather script, crontab script, crontab file, and index.html file
ADD weather.sh .
ADD startcron.sh .
ADD crontab /etc/cron.d/hello-cron
ADD index.html /usr/share/nginx/html/

#Install required tools, set execute permissions on startcron.sh, and execute weather.sh for immediate data on website
RUN apt-get update && \
    apt-get -y install apt-utils && \
    apt-get -y install curl && \
    apt-get -y install cron && \
    touch /var/log/cron.log && \
    crontab /etc/cron.d/hello-cron && \
    chmod 0644 /etc/cron.d/hello-cron && \
    chmod +x startcron.sh && \
    sh weather.sh

#Nginx runs from base image: Do not add CMD
