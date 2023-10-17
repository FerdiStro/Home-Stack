echo "Removing Docker Services"
docker stack rm DNS
docker stack rm PROXY
docker stack rm nextcloud
docker stack rm SONAR
