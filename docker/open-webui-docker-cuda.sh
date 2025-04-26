export DOCKER_HOST_IP='192.168.31.10'

docker run -d \
  --name open-webui \
  --restart always \
  --add-host host.docker.internal:${DOCKER_HOST_IP} \
  --gpus all \
  -p 127.0.0.1:3000:8080 \
  -v open-webui:/app/backend/data \
  -e GLOBAL_LOG_LEVEL="DEBUG" \
  -e http_proxy="http://${DOCKER_HOST_IP}:10808" \
  -e https_proxy="http://${DOCKER_HOST_IP}:10808" \
  -e no_proxy="localhost,127.0.0.0/8,::1,api.deepseek.com,host.docker.internal" \
  ghcr.io/mister-hope/open-webui-blackwell:cu128-cuda
