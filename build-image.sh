#!/bin/bash

docker buildx build --platform linux/arm64 --push --progress=plain -t hungcuongvt90/jenkins:ubuntu-jenkins-2.303.1-arm64-cuong \
--build-arg USER=cuong \
--build-arg GROUP=cuong \
--build-arg UID=1000 \
--build-arg GID=1000 \
--build-arg DOCKER_GID=115 \
--build-arg HTTP_PORT=8080 \
--build-arg AGENT_PORT=40000 \
--build-arg JENKINS_VERSION=2.303.1 \
--build-arg JENKINS_SHA=4aae135cde63e398a1f59d37978d97604cb595314f7041d2d3bac3f0bb32c065 \
--build-arg JENKINS_HOME=/home/cuong/jenkins_home \
.
