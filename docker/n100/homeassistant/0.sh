docker run -d \
  --name homeassistant \
  --restart=unless-stopped \
  -e TZ=Asia/Shanghai \
  -e http_proxy="http://127.0.0.1:10809" \
  -e https_proxy="http://127.0.0.1:10809" \
  -e no_proxy="localhost,127.0.0.1,192.168.*.*" \
  -v /opt/docker/homeassistant:/config \
  -v /run/dbus:/run/dbus:ro \
  --network=host \
  homeassistant/home-assistant
