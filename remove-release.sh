#!/bin/bash

# SET VARIABLES
BOSH_NAME="micro-bosh"
RELEASE_NAME="private-image-repository-release"
RELEASE_VERSION="1.0"

# DELETE RELEASE
bosh -e ${BOSH_NAME} delete-release ${RELEASE_NAME}/${RELEASE_VERSION} -n

# DELETE RELEASE FILES
rm releases/${RELEASE_NAME}.tgz
rm -rf ./dev_releases/
rm -rf .dev_builds/

