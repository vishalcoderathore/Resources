FROM nginx:alpine

WORKDIR /usr/share/nginx/html

COPY ./Galappear.tar.gz /usr/share/nginx/html

COPY ./server.conf /etc/nginx/conf.d

RUN tar -xvzf /usr/share/nginx/html/Galappear.tar.gz && rm -rfv /usr/share/nginx/html/Galappear.tar.gz

CMD ["nginx", "-g", "daemon off;"]
