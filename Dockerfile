FROM nginx:latest
RUN apt-get update && apt-get install -y \
        git
RUN chmod 755 /usr/share/nginx/html/*
RUN chown www-data /usr/share/nginx/html/*
RUN chmod 755 /usr/share/nginx/html/audio/*
RUN chown www-data /usr/share/nginx/html/audio/*
