#!/usr/bin/env bash

# To create Azure Web App and Seft-Hosted agent to run pipeline.
# Can run `sh commands.sh` if want to create both agent and App Service at same time or copy single command to provsion one by one

az vm create --resource-group Azuredevops --name my-agent-1 --image Ubuntu2204 --size Standard_DS1_v2 --data-disk-sizes-gb 20 --admin-username devopsagent --admin-password DevOpsAgent@123 --nsg-rule SSH --public-ip-sku Standard

az webapp up --name nguyenlc1-project2 --resource-group Azuredevops --runtime PYTHON:3.9 --sku B1