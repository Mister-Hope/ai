docker run -d \
  --name pipelines \
  --restart always \
  --add-host=host.docker.internal:host-gateway \
  -p 9099:9099 \
  -v pipelines:/app/pipelines \
  ghcr.io/open-webui/pipelines:main
