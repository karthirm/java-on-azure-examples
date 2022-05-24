#!/bin/bash
cd ..


if [[ -z $RESOURCE_GROUP ]]; then
export RESOURCE_GROUP=java-on-azure-$RANDOM
export REGION=westus2
fi

az group create --name $RESOURCE_GROUP --location $REGION
if [[ -z $POSTGRESQL_NAME ]]; then
export POSTGRESQL_NAME=postgresql-$RANDOM
export POSTGRESQL_USERNAME=postgresql
export POSTGRESQL_PASSWORD=p#ssw0rd-$RANDOM
fi
az postgres server create \
--admin-user $POSTGRESQL_USERNAME \
--admin-password $POSTGRESQL_PASSWORD \
--name $POSTGRESQL_NAME \
--resource-group $RESOURCE_GROUP \
--sku B_Gen5_1 \
--ssl-enforcement Disabled
export LOCAL_IP=`curl -s whatismyip.akamai.com`

az postgres server firewall-rule create \
--resource-group $RESOURCE_GROUP \
--server $POSTGRESQL_NAME \
--name AllowMyLocalIP \
--start-ip-address $LOCAL_IP \
--end-ip-address $LOCAL_IP

cd databases/postgresql/load-your-postgresql-database-with-data

export POSTGRESQL_DNS_NAME=`az postgres server show \
--resource-group $RESOURCE_GROUP \
--name $POSTGRESQL_NAME \
--query fullyQualifiedDomainName \
--output tsv`

export POSTGRESQL_CLIENT_USERNAME="$POSTGRESQL_USERNAME@$POSTGRESQL_NAME"

PGPASSWORD=$POSTGRESQL_PASSWORD psql --host=$POSTGRESQL_DNS_NAME --port=5432 --username $POSTGRESQL_CLIENT_USERNAME --dbname=postgres --file load.sql

cd ../../..


az group delete --name $RESOURCE_GROUP --yes || true