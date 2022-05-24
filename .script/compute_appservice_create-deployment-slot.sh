#!/bin/bash
cd ..


if [[ -z $RESOURCE_GROUP ]]; then
export RESOURCE_GROUP=java-on-azure-$RANDOM
export REGION=westus2
fi

az group create --name $RESOURCE_GROUP --location $REGION
if [[ -z $APPSERVICE_PLAN ]]; then
export APPSERVICE_PLAN=appservice-plan-$RANDOM
fi
az appservice plan create \
--resource-group $RESOURCE_GROUP \
--location $REGION \
--name $APPSERVICE_PLAN \
--is-linux \
--sku P1v3

cd compute/appservice/tomcat-helloworld

mvn clean install
export APPSERVICE_TOMCAT_HELLOWORLD=appservice-tomcat-helloworld-$RANDOM
mvn azure-webapp:deploy \
-DappName=$APPSERVICE_TOMCAT_HELLOWORLD \
-DappServicePlan=$APPSERVICE_PLAN \
-DresourceGroup=$RESOURCE_GROUP

sleep 60
cd ../../..

az webapp deployment slot create \
--resource-group $RESOURCE_GROUP \
--name $APPSERVICE_TOMCAT_HELLOWORLD \
--slot staging
az webapp show --name $APPSERVICE_TOMCAT_HELLOWORLD \
--resource-group $RESOURCE_GROUP \
--query=defaultHostName
az webapp deployment slot list --name $APPSERVICE_TOMCAT_HELLOWORLD \
--resource-group $RESOURCE_GROUP \
--query='[].defaultHostName'

export RESULT=$(az webapp deployment slot list --resource-group $RESOURCE_GROUP --name $APPSERVICE_TOMCAT_HELLOWORLD  --output tsv --query [0].state)

az group delete --name $RESOURCE_GROUP --yes || true

if [[ "$RESULT" != Running ]]; then
echo 'Deployment slot is NOT running'
exit 1
fi