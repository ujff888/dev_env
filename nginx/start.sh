
docker run -it -d --name  nginx -v ${pwd}/www:/usr/share/nginx/html -v ${pwd}/conf.d/:/etc/nginx/conf.d/ -p 80:80 --restart always nginx