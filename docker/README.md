# Home-Stack
Instructions for Docker.

### Create Secrets with Dockers own secret Engien
If you want to sea all Secrets use `docker secret ls` command <br>
If you want to remove a Secret use `docker secret rm NAME` command

- Secrets for Cloudflare
  
  `echo "nextcloud-api-PW" | docker secret create nextcloud_API_PW -` <br>
  `echo "nextcloud-zone" | docker secret create nextcloud_ZONE -`

- Secrets for Nextcloud


### Setting up/down DockerStacks
For setting the stack up use the `./setDockerUP.sh` script. <br>
For setting the stack down use the `.setDockerDOWN.sh` script 
