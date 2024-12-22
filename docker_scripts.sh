#!/bin/bash

if [ "$1" = "build_image" ]; then

docker build -t fastapi-docker-template:latest .

elif [ "$1" = "remove_image" ]; then

docker rmi -f fastapi-docker-template:latest

elif [ "$1" = "build_container" ]; then

docker run \
--restart unless-stopped \
-d \
--name fastapi-docker-template \
-p 3622:3622 \
fastapi-docker-template:latest

elif [ "$1" = "remove_container" ]; then

docker rm -f fastapi-docker-template

elif [ "$1" = "see_logs" ]; then

docker logs -f fastapi-docker-template

elif [ "$1" = "enter_container" ]; then

docker exec -it fastapi-docker-template /bin/bash

fi
