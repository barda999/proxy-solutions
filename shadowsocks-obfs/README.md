# Setup

### Server

```bash
cd shadowsocks-obfs/server/
```

Replace `<PASSWORD>` with your customized password, and then:

```bash
docker-compose up -d
```

### Client

I suggest using clash [clash](https://github.com/Dreamacro/clash)!

##### Windows

Download clash client with GUI from [here](https://github.com/Fndroid/clash_for_windows_pkg/releases) and launch the software.

Go to profile and edit the config. Replace the config with ```shadowsocks-obfs/client/config.yml```.

Go to Proxies panel, click on ```Rules```.

Go to ```Home``` panel and turn on the ```System proxy```.

You should be good to go!

##### Linux

Download the pre-built binary from [here](https://github.com/Dreamacro/clash/releases)

Extract the binary and do the chmod and permission stuff.

Repalce `<SERVER-IP>` with your server IP address, and the `<PASSWORD>` with your customized password in the ```shadowsocks-obfs/client/config.json```.

Run the clash with the ```config.json```.

```bash
clash -f /shadowsocks-obfs/client/config.yml
```

Change your Ubuntu Network settings to use one of the ```http``` or ```socks``` proxy provided on ports `7890` and `7891`.
