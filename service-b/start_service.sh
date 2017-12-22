#!/bin/bash
bundle exec ruby app.rb -p 8080 -o 127.0.0.1 &
envoy -c /etc/service-envoy.json --service-cluster service${SERVICE_NAME}
