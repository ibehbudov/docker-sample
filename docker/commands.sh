docker stop $(docker ps -a -q) &&
docker rm $(docker ps -a -q) &&
docker rm -f $(docker ps -qa) &&
docker rmi -f $(docker images -aq) &&
docker system prune &&
docker system prune -a


docker-compose build --no-cache &&
docker-compose up -d --force-recreate 


docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' 
