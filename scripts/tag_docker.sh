#!/bin/bash

TAG_BACK=$(curl -s https://registry.hub.docker.com/v2/repositories/lucasepitech/back/tags/\?page_size=1 | grep -o '"name":"[^"]*' | cut -d'"' -f4)
TAG_FRONT=$(curl -s https://registry.hub.docker.com/v2/repositories/lucasepitech/front/tags/\?page_size=1 | grep -o '"name":"[^"]*' | cut -d'"' -f4)

sed -i "s/TAG_FRONT=.*/TAG_FRONT=$TAG_FRONT/" ../.env.tag
sed -i "s/TAG_BACK=.*/TAG_BACK=$TAG_BACK/" ../.env.tag