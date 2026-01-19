#!/bin/bash
#integration test via Nginx + Redis

#Getting initial response from Nginx
initial=$(curl -s http://localhost/)

#Make another request to increment counter
curl -s http://localhost/ > /dev/null

#Get updated response
updated=$(curl -s http://localhost/)

#Simple validation: check if updated response is different from initial
if [ "$initial" != "$updated" ]; then
    echo "Integration test passed"
    echo "Initial response: $initial"
    echo "Updated response: $updated"
else
    echo "Integration test failed"
    echo "Initial response: $initial"
    echo "Updated response: $updated"
    exit 1
fi
