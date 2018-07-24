#!/bin/bash

echo agent.auto.register.key=${AUTOREGISTER_KEY} > /go-agent/config/autoregister.properties

exec /docker-entrypoint.sh