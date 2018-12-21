#!/bin/bash

echo "docker precisa estar instalado"

#criando volume
docker volume create portainer_data

#iniciando container
docker run -d --name portainer-docker --restart always -p 9000:9000 -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer

echo "acesse a interface com seuip:9000"
