cd /var/www
git clone https://github.com/H2-invent/jitsi-admin.git
cd jitsi-admin

curl -SL https://github.com/docker/compose/releases/download/v2.7.0/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose
chmod +x  /usr/local/bin/docker-compose
docker-compose -v
