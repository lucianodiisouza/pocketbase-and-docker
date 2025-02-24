#!/bin/sh

# Start PocketBase in the background
/usr/local/bin/pocketbase serve --http=0.0.0.0:8090 &

# Wait for the server to initialize
sleep 5

# Create the superuser
/usr/local/bin/pocketbase superuser upsert contato@oprimo.dev 1234567890

# Keep the container running
wait
