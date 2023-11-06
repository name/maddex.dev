#!/bin/bash

# Exit immediately if a command exits with a non-zero status.
set -e

echo "Re-assigning permissions for ~/multiorb/maddex.dev"
sudo chmod -R 777 ~/multiorb/maddex.dev

echo "Deploying using Docker Compose"
docker compose -f ~/multiorb/maddex.dev/docker-compose.yml up -d --build

echo "Pruning images"
docker image prune -f

# End of script