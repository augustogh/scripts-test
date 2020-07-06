#!/bin/bash
#docker run -v [/carpeta_host:]/carpeta_en_contenedor   /shared-data:/shared-data
docker run -d \
	--name mattermost-dine \
	--publish 8443:8065 \
        --volume /home/vagrant/mattermost/config:/mm/config \
	mattermost/mattermost-preview
