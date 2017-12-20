docker run \
	  -d \
          -e ENV_DOCKER_REGISTRY_HOST=45.32.35.230 \
	  -e ENV_DOCKER_REGISTRY_PORT=5000 \
	  -p 8080:80 \
	  konradkleine/docker-registry-frontend:v2

