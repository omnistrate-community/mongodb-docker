#!/bin/bash

echo -n $REPLICA_SET_KEY > /tmp/replica-set-key-file
chmod 400 /tmp/replica-set-key-file
chown 999:999 /tmp/replica-set-key-file

# Read environment variables and configure MongoDB for HA
# Example: setting up a replica set
docker-entrypoint.sh mongod --replSet "$REPLICA_SET_NAME" \
  --setParameter allowMultipleArbiters=false \
  --bind_ip 0.0.0.0 \
  --keyFile /tmp/replica-set-key-file 
