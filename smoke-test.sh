#!/bin/bash

#Test web1 service on port 81
if curl -s http://localhost:81 > /dev/null; then
  echo "web1 is up"
else
  echo "web1 is down"
  exit 1
fi

#Test web2 service on port 82
if curl -s http://localhost:82 > /dev/null; then
  echo "web2 is up"
else
  echo "web2 is down"
  exit 1
fi
