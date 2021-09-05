#!/bin/bash
location="eastus"
randomIdentifier=badger734

# Setting random identifiers
resource="resource-$randomIdentifier"
storage_acnt="storageacnt$randomIdentifier"
storage_cnt="storage-cnt-$randomIdentifier"

echo "Creating $resource..."
az group create \
    --name $resource \
    --location "$location"

echo "Creating $storage_acnt..."
az storage account create \
    --name $storage_acnt \
    --resource-group $resource \
    --location $location

echo "Creating "
az storage container create \
    --account-name $storage_acnt \
    --name $storage_cnt \
    --auth-mode login \
    --public-access container