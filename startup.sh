#!/bin/bash

docker rm -f angular-quickstart

docker build -t atantomo/angular-quickstart:1 .
docker run -tdp 3000:3000 -v $(pwd):/app --name angular-quickstart atantomo/angular-quickstart:1 /bin/bash
docker exec -it angular-quickstart npm install
docker exec -it angular-quickstart npm run typings install
docker exec -it angular-quickstart npm start
