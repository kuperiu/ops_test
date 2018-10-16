#!/bin/bash
prop_file="/tmp/application.properties"
cd ops_test && sudo ./mvnw spring-boot:run -Dspring.config.location=$prop_file
if [ $? -ne 0 ]; then
    exit 1
fi