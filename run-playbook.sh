#!/bin/bash

PLAYBOOK_HOME=/var/ansible

docker run \
	-v $(pwd):$PLAYBOOK_HOME \
	-v /tmp:/tmp \
	-v $(pwd)/etc/ansible:/etc/ansible \
	microsoft/ansible:latest \
	ansible-playbook $PLAYBOOK_HOME/$1

echo "Exiting..."
docker container prune -f

