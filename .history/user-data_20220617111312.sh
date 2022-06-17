#!/bin/bash
export AWS_ACCESS_KEY_ID="AKIAVY4XQ52Y44WENZ2S"
export AWS_SECRET_ACCESS_KEY="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"
export AWS_REGION="us-east-1"
export SQS_URL=""
yum update
yum -y install python3 python3-pip git
curl -fsSL https://get.docker.com | bash -
curl -L "https://github.com/docker/compose/releases/download/1.25.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
cd /opt
git clone https://github.com/geekrohit/celery-sqs-spot.git celery
cd celery
docker-compose up -d
