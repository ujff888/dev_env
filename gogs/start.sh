
docker run --name $(basename $(pwd)) -d  --restart always -p 10022:22 -p 10080:3000 -v ${pwd}/data:/data gogs/gogs