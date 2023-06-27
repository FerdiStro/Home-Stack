# Home-Stack
Instructions for Docker.

Create Secrets with Dockers own secret Engien


- Secrets for Cloudflare
echo "nextcloud-api-PW" | docker secret create nextcloud_API_PW -
echo "nextcloud-zone" | docker secret create nextcloud_ZONE -
- Secrets for Nextcloud
