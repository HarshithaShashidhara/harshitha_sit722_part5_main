#!/bin/bash

#
# Builds Docker images for book-catalog and inventory-management microservices.
#
# Environment variables:
#
#   CONTAINER_REGISTRY - The hostname of your container registry.
#   VERSION - The version number to tag the images with.
#
# Usage:
#
#       ./scripts/build-image.sh
#

set -u  # Fail if undefined variable is used
: "$CONTAINER_REGISTRY"
: "$VERSION"

# Build Docker image for book-catalog microservice
docker build -t $CONTAINER_REGISTRY/book-catalog:$VERSION --file ./book_catalog/Dockerfile ./book_catalog

# Build Docker image for inventory-management microservice
docker build -t $CONTAINER_REGISTRY/inventory-management:$VERSION --file ./inventory_management/Dockerfile ./inventory_management
