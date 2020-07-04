#!/bin/bash
docker run -d \
	--name mattermost-dine \
	--publish 8065:8065 \
        --volume /dine/mattermost \
        --volume /dine/mattermost-data \
	mattermost/mattermost-preview
