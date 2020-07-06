#!/bin/bash
docker run -d \
	--name mattermost-dine \
	--publish 8065:8065 \
	mattermost/mattermost-preview
#	--add-host dockerhost:127.0.0.1 \
#	--ipam-driver=dhcp \
#    volumes:
#      - ./mattermost/config/config.json:/config/config.json
#      - mattermost-data:/mattermost/data
#      - mattermost-logs:/mattermost/logs
#      - mattermost-plugins:/mattermost/plugins
#      - mattermost-client-plugins:/mattermost/client/plugins
#	mattermost/mattermost-preview
