curl --fail  http://localhost:8080/
if [ $? -ne 0 ]; then
    exit 1
fi
curl --fail  http://localhost/
if [ $? -ne 0 ]; then
    exit 1
fi