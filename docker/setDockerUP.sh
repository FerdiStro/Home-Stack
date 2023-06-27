echo "Start Docker Services"
cd DNS/
docker stack deploy -c docker-compose.yml DNS
cd ../nextcloud
docker stack deploy -c docker-compose.yml nextcloud

watch docker service ls
