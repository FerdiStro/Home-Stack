# Home-Stack
Instructions for Docker.

### Adding Docker Secrets
- Secrets for Cloudflare: <br><br>
Create a file named `cloudflare_secrets.txt` in `/docker/DNS`. <br>
Add the following lines to the file: <br>
   - `API_KEY=<yourAPIKEY>`
   - `ZONE=<yourZONE>`
<br><br>
- Secrets for Nextcloud:  <br><br>
Create a file named `nextcloud_secrets.txt` in `/docker/nextcloud`. <br>
Add the following lines to the file: <br>
   - `MYSQL_ROOT_PASSWORD=<yourMYSQL_ROOT_PW>`
   - `MYSQL_DATABASE=<yourMYSQL_DATABSE>`
   - `MYSQL_USER=<yourMYSQL_USER>`
   - `MYSQL_PASSWORD=<yourMYSQL_PW>`
<br>
<br>
Edit the `nginx.conf` file in `/docker/nextcloud` to match your server proxy configuration.  <br>
Edit the `server_name` to your own Server Name (DNS Name). If you don't use the default ports, edit them as well: <br> <br>

```
events {}

http {
  server {
    listen 8080;
    server_name <yourServerName>;

    location / {
      proxy_pass http://app:8080;
      proxy_set_header Host $host;
      proxy_set_header X-Real-IP $remote_addr;
      proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
      proxy_set_header X-Forwarded-Proto $scheme;
    }
  }
}
```
<br>
Nextcloud can now be accessed at: `yourServerName:8080`

### Setting up/down Docker Stacks
To set up the stack, use the `./setDockerUP.sh` script. <br>
To tear down the stack, use the `./setDockerDOWN.sh` script.
