#!/bin/bash
cd ..


curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-ubuntu-$(lsb_release -cs)-prod $(lsb_release -cs) main" > /etc/apt/sources.list.d/dotnetdev.list'
sudo apt-get update
sudo apt-get install azure-functions-core-tools-3
func


if [[ -z $RESOURCE_GROUP ]]; then
export RESOURCE_GROUP=java-on-azure-$RANDOM
export REGION=westus2
fi

az group create --name $RESOURCE_GROUP --location $REGION

if [[ -z $COSMOSDB_ACCOUNT_NAME ]]; then
export COSMOSDB_ACCOUNT_NAME=cosmosdb-$RANDOM
az cosmosdb create \
--name $COSMOSDB_ACCOUNT_NAME \
--resource-group $RESOURCE_GROUP \
--locations regionName=eastus failoverPriority=0
fi


cd compute/functions/cosmosdb-output

export FUNCTIONS_COSMOSDB=functions-cosmosdb-$RANDOM
export FUNCTIONS_COSMOSDB_CONNECTION_STRING="$(az cosmosdb keys list --resource-group $RESOURCE_GROUP --name $COSMOSDB_ACCOUNT_NAME --type connection-strings --query connectionStrings[0].connectionString --output tsv)"
mvn -P local validate
mvn -DresourceGroup=$RESOURCE_GROUP -DappName=$FUNCTIONS_COSMOSDB  package
mvn -DappName=$FUNCTIONS_COSMOSDB  -DresourceGroup=$RESOURCE_GROUP \
-DcosmosDBConnectionString="$FUNCTIONS_COSMOSDB_CONNECTION_STRING" \
clean package azure-functions:deploy

cd ../../..


az group delete --name $RESOURCE_GROUP --yes || true