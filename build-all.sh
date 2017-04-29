#!/bin/bash

cf-cli login --token $TOKEN -u $USER
cf-cli builds build -a $ACCOUNT -o $REPO_OWNER -r $REPO_NAME --branch $BRANCH --pipelineName $PIPELINE_NAME
