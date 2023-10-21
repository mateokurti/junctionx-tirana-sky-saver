FROM nginx:1.25.2 as nginx

RUN rm /etc/nginx/conf.d/default.conf
COPY ./compose/production/nginx/nginx.conf /etc/nginx/conf.d/
COPY ./compose/production/nginx/static/* /etc/nginx/static
COPY ./compose/production/nginx/docker/* /etc/nginx/docker/
