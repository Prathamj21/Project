
#!/bin/bash

cd /home/ubuntu/live-project || exit

git pull origin main

docker stop live-project || true
docker rm live-project || true

docker build -t live-project .
docker run -d -p 8080:3000 --name live-project live-project
make executable: chmod +x deploy.sh
