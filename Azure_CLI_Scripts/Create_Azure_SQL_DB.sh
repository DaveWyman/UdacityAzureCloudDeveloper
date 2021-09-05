#!/bin/bash
location="East US"
randomIdentifier=RandomBadger734

resource="resource-$randomIdentifier"
server="server-$randomIdentifier"
database="database-$randomIdentifier"

login="udacityadmin"
password="UdacityCoursePass1"

startIP=0.0.0.0
endIP=0.0.0.0

#MyPublicIP=$(curl ipinfo.ip/ip)
MyPublicIP=47.227.175.56

echo "Creating $resource..."
az group create \
    --name $resource \
    --location "$location"

echo "Creating $server in $location..."
az sql server create \
    --name $server \
    --resource-group $resource \
    --location "$location" \
    --admin-user $login \
    --admin-password $password \
    --enable-public-network true \
    --verbose

echo "Configuring firewall..."
az sql server firewall-rule create \
    --resource-group $resource \
    --server $server \
    -n AllowYourIp \
    --start-ip-address $startIP \
    --end-ip-address $endIP \
    --verbose

echo "Configuring firewall cont'd..."
az sql server firewall-rule create \
    --resource-group $resource \
    --server $server \
    -n AllowYourIp \
    --start-ip-address $MyPublicIP \
    --end-ip-address $MyPublicIP \
    --verbose

echo "Creating $database on $server..."
az sql db create \
    --resource-group $resource \
    --server $server \
    --name $database \
    --tier Basic \
    --zone-redundant false