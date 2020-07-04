#!/bin/bash
docker run -d \
	--name mattermost-dine \
	--publish 8065:8065 \
#	--add-host dockerhost:127.0.0.1 \
#	--ipam-driver=dhcp \
#        --volume /dine/mattermost \
#        --volume /dine/mattermost-data \
	mattermost/mattermost-preview
