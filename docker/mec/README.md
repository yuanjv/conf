# DOCKER CONFIG FROM root@mec:/opt/docker -ish

## network
```
docker network create --driver=bridge --subnet=172.25.4.0/24 unsafe
```

has my configs relate to nvcc and other cuda stuff but im too lazy to cp x y right now