docker run -it --rm \
  --link mongodb:mongo \
  --entrypoint npm \
  --workdir /yapi/vendors \
  --network dev \
  -v $PWD/config.json:/yapi/config.json \
  jpshop/yapi \
  run install-server

docker run -d \
  --name yapi \
  --link mongodb:mongo \
  --workdir /yapi/vendors \
  -p 3000:3000 \
  --restart always \
  --network dev \
  -v $PWD/config.json:/yapi/config.json \
  jpshop/yapi \
  server/app.js

docker run -d \
  --name yapi \
  --workdir /yapi/vendors \
  -p 3001:3000 \
  --restart always \
  -v $PWD/config.json:/yapi/config.json \
  jpshop/yapi