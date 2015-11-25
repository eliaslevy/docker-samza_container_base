#!/bin/sh

echo $SAMZA_JOB_CONFIG > /samza/job.json

export SAMZA_COORDINATOR_URL="file:///samza/job.json"
export SAMZA_LOG_DIR="/samza/log"

cd /samza
exec /samza/bin/run-container.sh