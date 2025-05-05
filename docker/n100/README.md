# DOCKER CONFIG FROM root@n100:/opt/docker -ish

## proxy settings:
/etc/systemd/system/docker.service.d/http-proxy.conf
```
[Service]
Environment="HTTP_PROXY=http://127.0.0.1:10809"
Environment="HTTPS_PROXY=http://127.0.0.1:10809"
Environment="NO_PROXY=localhost,127.0.0.0/8,192.168.0.0/16"
```

## network
```
docker network create --driver=bridge --subnet=172.25.4.0/24 unsafe
```