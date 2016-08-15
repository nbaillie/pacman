FROM nginx:latest
RUN apt-get update && apt-get install -y \
        git
RUN rm -R /usr/share/nginx/html/
RUN git clone https://github.com/daleharvey/pacman.git /usr/share/nginx/html/
RUN chmod -R 755 /usr/share/nginx/html/*
RUN chown -R www-data /usr/share/nginx/html/*

