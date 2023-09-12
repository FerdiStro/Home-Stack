echo "Start Docker Services"
cd DNS/
docker stack deploy -c docker-compose.yml DNS
cd ../nextcloud
docker stack deploy -c docker-compose.yml nextcloud
cd ../PROXY
docker stack deploy -c docker-compose.yml PROXY


watch docker service ls
