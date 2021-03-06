#!/bin/bash
echo 'Starting Spring Boot app'
cd /app/ops_test
./mvnw spring-boot:run -Dspring.config.location=/tmp/application.properties >/dev/null 2>&1 &
if [ $? -ne 0 ]; then
    exit 1
fi
sleep 60