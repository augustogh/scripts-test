#!/bin/bash
	echo "[TASK 1] Install docker engine"
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common -y >/dev/null 2>&1
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - >/dev/null 2>&1
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable" >/dev/null 2>&1
sudo apt-get update >/dev/null 2>&1
sudo apt-get install docker-ce -y >/dev/null 2>&1
# sudo systemctl enable docker >/dev/null 2>&1
# sudo usermod -aG docker vagrant
#install docker-compose
echo "[TASK 2] Install docker-compose"
sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose >/dev/null 2>&1
sudo chmod +x /usr/local/bin/docker-compose >/dev/null 2>&1
#install gitlab
echo "[TASK 3] Install gitlab"
cat <<EOF > docker-compose.yml
web:
  image: 'gitlab/gitlab-ce:latest'
  restart: always
  hostname: 'gitlab.example.com'
  environment:
    GITLAB_OMNIBUS_CONFIG: |
      external_url 'https://gitlab.example.com'
  ports:
    - '80:80'
    - '443:443'
    - '30022:22'
  volumes:
    - '/srv/gitlab/config:/etc/gitlab'
    - '/srv/gitlab/logs:/var/log/gitlab'
    - '/srv/gitlab/data:/var/opt/gitlab'
EOF
sudo mkdir /srv/gitlab/config -p
sudo mkdir /srv/gitlab/logs -p
sudo mkdir /gitlab/data -p
sudo setfacl -Rm default:group:docker:rwx /srv/gitlab
sudo docker-compose up -d >/dev/null 2>&1
