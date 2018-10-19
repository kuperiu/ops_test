#!/bin/bash
availability_zone=$(curl http://169.254.169.254/latest/meta-data/placement/availability-zone)
prop_file="/tmp/application.properties"
sudo mkdir /app
cd /app && sudo git clone https://github.com/kuperiu/ops_test.git
if [ $? -ne 0 ]; then
    exit 1
fi
cd ops_test
echo "availabilityZone=$availability_zone" >> $prop_file
echo "url=http://microservice-b-704943846.eu-central-1.elb.amazonaws.com/" >> $prop_file
./mvnw package
if [ $? -ne 0 ]; then
    exit 1
fi