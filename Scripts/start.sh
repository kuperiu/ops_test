#!/bin/bash
echo 'Starting Spring Boot app'
cd /app/ops_test/target
java -jar suchapp-0.0.1-SNAPSHOT.jar
if [ $? -ne 0 ]; then
    exit 1
fi