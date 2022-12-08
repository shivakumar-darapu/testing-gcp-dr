#!/bin/bash

echo "Running the startup script " >> /tmp/startup-script-logs
sudo apt-get update
sudo apt-get install kubectl -y
gcloud container clusters get-credentials mylab-gke --zone europe-west1-c --project mytestlab-356007

