#!/bin/bash

# Authenticates with kubernetes cluster via gcloud
#
# You will need to set the following environment variables:
#
#    CLOUDSDK_COMPUTE_ZONE=australia-southeast1-b
#    CLOUDSDK_CORE_PROJECT=sca-dev-1
#    CLOUDSDK_CONTAINER_CLUSTER=test-cluster

mkdir -p "$HOME/.config/gcloud"

if [[ -n "$GCLOUD_SERVICE_KEY" ]]; then
    echo "$GCLOUD_SERVICE_KEY" > "$HOME/.config/gcloud/application_default_credentials.json"
else 
    cat /root/auth/application_default_credentials.json  > "$HOME/.config/gcloud/application_default_credentials.json"
fi

gcloud auth activate-service-account --key-file "$HOME/.config/gcloud/application_default_credentials.json"
