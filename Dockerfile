#Start with current nginx
FROM nginx:latest
#Update package manager and install git
RUN apt-get update && apt-get install -y \
        git
#Clean the html root dir
RUN rm -R /usr/share/nginx/html/
#Clone pacman app from git
RUN git clone https://github.com/daleharvey/pacman.git /usr/share/nginx/html/
#Modify files for web serving
RUN chmod -R 755 /usr/share/nginx/html/*
RUN chown -R www-data /usr/share/nginx/html/*
#
#USAGE:
# docker run --name pacman -d -p 80:80 nbaillie/pacman