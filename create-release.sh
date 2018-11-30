#!/bin/bash

# SET VARIABLES
BOSH_NAME="micro-bosh"
RELEASE_NAME="private-image-repository-release"
RELEASE_VERSION="1.0"

# CREATE RELEASE
bosh -e ${BOSH_NAME} create-release --sha2 --force --tarball releases/${RELEASE_NAME}.tgz --name ${RELEASE_NAME} --version ${RELEASE_VERSION}

# UPLOAD RELEASE
bosh -e ${BOSH_NAME} upload-release releases/${RELEASE_NAME}.tgz

