sudo docker buildx build \
  --platform linux/arm64 \
  -t ghcr.io/stefi-milo/home-arcade:4.5 \
  --push .
