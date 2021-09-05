#!/bin/bash

# Create a resource group.
az group delete --name MyResourceGroup \
                --subscription "Azure subscription 1" \
                --yes

