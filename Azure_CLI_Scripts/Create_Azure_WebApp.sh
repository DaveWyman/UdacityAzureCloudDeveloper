#!/bin/bash

# Create a resource group.
az group create --location westus \
                --name MyResourceGroup \
                --subscription "Azure subscription 1"

# Deploy App Service Web App from a Directory
az webapp up \
 --resource-group MyResourceGroup \
 --name MyAppService1234 \
 --sku F1 \
 --verbose