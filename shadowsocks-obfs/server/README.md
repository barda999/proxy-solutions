### Setup script
```
wget -O - https://raw.githubusercontent.com/barda999/proxy-solutions/main/shadowsocks-obfs/server/setup.sh | sudo bash
```
This script has been tested on some digital ocean servers

### Step by Step

1. Install docker and docker-compose:
```
sudo apt-get update && sudo apt-get install docker docker-compose
```

2. Create `config.yml` and `docker-compose.yml` files alongside each other.
3. Fill in your private password in the `config.yml` file.
4. Spin up the docker-compose:
```
docker-compose up -d
```
