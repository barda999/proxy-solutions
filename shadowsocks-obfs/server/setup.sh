apt-get update && apt-get install docker docker-compose -y
docker pull hitian/ss
wget https://raw.githubusercontent.com/barda999/proxy-solutions/main/shadowsocks-obfs/server/docker-compose.yml
wget https://raw.githubusercontent.com/barda999/proxy-solutions/main/shadowsocks-obfs/server/config.json
PASSWORD=$(tr -dc A-Za-z0-9 </dev/urandom | head -c 32)
sed -i "s/<PASSWORD>/$PASSWORD/g" config.json
docker-compose up -d
