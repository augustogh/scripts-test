#!/bin/bash
docker run -d \
	--hostname gitlab.augusto.com \
	-p 443:443 -p 80:80 -p 2222:22 \
	--name gitlab-sunil \
	--restart unless-stopped \
	--volume /storage/gitlab/config:/etc/gitlab \
	--volume /storage/gitlab/logs:/var/log/gitlab \
	--volume /storage/gitlab/data:/var/opt/gitlab \
	gitlab/gitlab-ce:latest
