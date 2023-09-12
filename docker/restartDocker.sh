echo "Remove Docker-Stack"
./setDockerDOWN.sh
echo "Wating for Docker-Networks"
sleep 8s
echo "Deploy Docker-Stack"
./setDockerUP.sh
