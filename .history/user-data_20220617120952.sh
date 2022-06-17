#!/bin/bash
export AWS_ACCESS_KEY_ID="AKIAVY4XQ52Y44WENZ2S"
export AWS_REGION="us-east-1"
export SQS_URL="https://sqs.us-east-1.amazonaws.com/397065383601/celery"
yum update
yum -y install python3 python3-pip git
curl -fsSL https://get.docker.com | bash -
curl -L "https://github.com/docker/compose/releases/download/1.25.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
cd /opt
git clone git clone https://github.com/DeepTitan/task_queue.git celery
cd celery
docker-compose up -d
