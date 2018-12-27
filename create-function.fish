#!/usr/bin/env fish

set -x REGISTRY gcr.io
set -x REGISTRY_USER (gcloud config get-value core/project)

pfs function create powerof2 \
             --git-repo https://github.com/shinyay/pfs-eventing-powerof2.git \
             --image $REGISTRY/$REGISTRY_USER/powerof2 \
             --verbose
