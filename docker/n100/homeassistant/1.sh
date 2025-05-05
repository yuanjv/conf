docker run -d \
  --name homeassistant \
  --restart=unless-stopped \
  -e TZ=Asia/Shanghai \
  -v /opt/docker/homeassistant:/config \
  -v /run/dbus:/run/dbus:ro \
  --network=host \
  homeassistant/home-assistant
