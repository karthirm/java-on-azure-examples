# Java on Azure Examples

This GitHub repository contains a set of Azure examples specifically for Java developers to quickly get started with Azure.
Please use the issue tracker to leave feedback, file issues or to propose other examples.

## Getting started

To work with these examples it is assumed you have the Azure CLI installed, and you have logged in and set your default subscription.
If you haven't done so follow the steps below.

_Note: Logging in and setting your default subscription needs to be done once per terminal session._

### Install Azure CLI

To setup the Azure CLI, please visit [Install the Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli).
And once you are done come back to this README.

### Login into Azure

<!-- workflow.skip() -->
````shell
  az login
````

### Set your default subscription

Get a list of your subscriptions (notice the `refresh` parameter that retrieves up-to-date subscriptions from the server) :

<!-- workflow.skip() -->
````shell
  az account list --output table --refresh
````

Set your default subscription for this session using the subscription id from the previous output:

<!-- workflow.skip() -->
````shell
  az account set --subscription "subscription-id"
````

<!-- workflow.run() 
exit 0
  -->

## Analytics

### Azure Data Explorer examples

| Name | Link | Status
| ---- | ---- | ------
| 1. [Create a database](analytics/adx/create-database/README.md) | [Workflow](.github/workflows/analytics_adx_create-database_README_md.yml) | [![analytics/adx/create-database/README.md](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/analytics_adx_create-database_README_md.yml/badge.svg)](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/analytics_adx_create-database_README_md.yml)
| 2. [Create a table](analytics/adx/create-table/README.md) | [Workflow](.github/workflows/analytics_adx_create-table_README_md.yml) | [![analytics/adx/create-table/README.md](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/analytics_adx_create-table_README_md.yml/badge.svg)](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/analytics_adx_create-table_README_md.yml)
| 3. [Create an Azure Data Explorer cluster](analytics/adx/create/README.md) | [Workflow](.github/workflows/analytics_adx_create_README_md.yml) | [![analytics/adx/create/README.md](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/analytics_adx_create_README_md.yml/badge.svg)](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/analytics_adx_create_README_md.yml)
| 4. [Ingest Client](analytics/adx/ingest-client/README.md) | [Workflow](.github/workflows/analytics_adx_ingest-client_README_md.yml) | [![analytics/adx/ingest-client/README.md](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/analytics_adx_ingest-client_README_md.yml/badge.svg)](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/analytics_adx_ingest-client_README_md.yml)

### Azure Event Hubs examples

| Name | Link | Status
| ---- | ---- | ------
| 1. [Create an event hub](analytics/eventhubs/create-eventhub/README.md) | [Workflow](.github/workflows/analytics_eventhubs_create-eventhub_README_md.yml) |  [![analytics/eventhubs/create-eventhub/README.md](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/analytics_eventhubs_create-eventhub_README_md.yml/badge.svg)](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/analytics_eventhubs_create-eventhub_README_md.yml)
| 2. [Create a namespace](analytics/eventhubs/create-namespace/README.md) | [Workflow](.github/workflows/analytics_eventhubs_create-namespace_README_md.yml) | [![analytics/eventhubs/create-namespace/README.md](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/analytics_eventhubs_create-namespace_README_md.yml/badge.svg)](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/analytics_eventhubs_create-namespace_README_md.yml)
| 3. [Receive an event](analytics/eventhubs/receive-event/README.md) | [Workflow](.github/workflows/analytics_eventhubs_receive-event_README_md.yml) |  [![analytics/eventhubs/receive-event/README.md](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/analytics_eventhubs_receive-event_README_md.yml/badge.svg)](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/analytics_eventhubs_receive-event_README_md.yml)
| 4. [Send an event](analytics/eventhubs/send-event/README.md) | [Workflow](.github/workflows/analytics_eventhubs_send-event_README_md.yml) | [![analytics/eventhubs/send-event/README.md](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/analytics_eventhubs_send-event_README_md.yml/badge.svg)](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/analytics_eventhubs_send-event_README_md.yml)

## Compute

### Azure App Service examples

| Name | Link | Status
| ---- | ---- | ------ 
| 1. [Create a deployment slot](compute/appservice/create-deployment-slot/README.md) | [Workflow](.github/workflows/compute_appservice_create-deployment-slot_README_md.yml) | [![compute/appservice/create-deployment-slot/README.md](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/compute_appservice_create-deployment-slot_README_md.yml/badge.svg)](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/compute_appservice_create-deployment-slot_README_md.yml)
| 2. [Create an App Service Plan](compute/appservice/create-plan/README.md) | [Workflow](.github/workflows/compute_appservice_create-plan_README_md.yml) | [![compute/appservice/create-plan/README.md](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/compute_appservice_create-plan_README_md.yml/badge.svg)](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/compute_appservice_create-plan_README_md.yml)
| 3. [Delete an App Service Plan](compute/appservice/delete-plan/README.md) | [Workflow](.github/workflows/compute_appservice_delete-plan_README_md.yml) | [![compute/appservice/delete-plan/README.md](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/compute_appservice_delete-plan_README_md.yml/badge.svg)](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/compute_appservice_delete-plan_README_md.yml)
| 4. [Delete your web application](compute/appservice/delete-webapp/README.md) | [Workflow](.github/workflows/compute_appservice_delete-webapp_README_md.yml) | [![compute/appservice/delete-webapp/README.md](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/compute_appservice_delete-webapp_README_md.yml/badge.svg)](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/compute_appservice_delete-webapp_README_md.yml)
| 5. [Deploy to a deployment slot](compute/appservice/deploy-to-deployment-slot/README.md) | [Workflow](.github/workflows/compute_appservice_deploy-to-deployment-slot_README_md.yml) | [![compute/appservice/deploy-to-deployment-slot/README.md](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/compute_appservice_deploy-to-deployment-slot_README_md.yml/badge.svg)](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/compute_appservice_deploy-to-deployment-slot_README_md.yml)
| 6. [Deploy Glassfish using a Docker image](compute/appservice/docker-glassfish/README.md) | [Workflow](.github/workflows/compute_appservice_docker-glassfish_README_md.yml) | [![compute/appservice/docker-glassfish/README.md](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/compute_appservice_docker-glassfish_README_md.yml/badge.svg)](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/compute_appservice_docker-glassfish_README_md.yml)
| 7. [Deploy a GraalVM application using a Docker image](compute/appservice/docker-graalvm/README.md) | [Workflow](.github/workflows/compute_appservice_docker-graalvm_README_md.yml) | [![compute/appservice/docker-graalvm/README.md](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/compute_appservice_docker-graalvm_README_md.yml/badge.svg)](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/compute_appservice_docker-graalvm_README_md.yml)
| 8. [Deploy Jetty using a Docker image](compute/appservice/docker-jetty/README.md) | [Workflow](.github/workflows/compute_appservice_docker-jetty_README_md.yml) | [![compute/appservice/docker-jetty/README.md](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/compute_appservice_docker-jetty_README_md.yml/badge.svg)](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/compute_appservice_docker-jetty_README_md.yml)
| 9. [Deploy Payara using a Docker image](compute/appservice/docker-payara/README.md) | [Workflow](.github/workflows/compute_appservice_docker-payara_README_md.yml) | [![compute/appservice/docker-payara/README.md](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/compute_appservice_docker-payara_README_md.yml/badge.svg)](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/compute_appservice_docker-payara_README_md.yml)
| 10. [Deploy Tomcat using a Docker image](compute/appservice/docker-tomcat/README.md) | [Workflow](.github/workflows/compute_appservice_docker-tomcat_README_md.yml) |[![compute/appservice/docker-tomcat/README.md](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/compute_appservice_docker-tomcat_README_md.yml/badge.svg)](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/compute_appservice_docker-tomcat_README_md.yml)
| 11. [Deploy WildFly using a Docker image](compute/appservice/docker-wildfly/README.md) | [Workflow](.github/workflows/compute_appservice_docker-wildfly_README_md.yml) |[![compute/appservice/docker-wildfly/README.md](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/compute_appservice_docker-wildfly_README_md.yml/badge.svg)](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/compute_appservice_docker-wildfly_README_md.yml)
| 12. [Deploy a managed JavaSE Quarkus application](compute/appservice/javase-quarkus/README.md) | [Workflow](.github/workflows/compute_appservice_javase-quarkus_README_md.yml) | [![compute/appservice/javase-quarkus/README.md](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/compute_appservice_javase-quarkus_README_md.yml/badge.svg)](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/compute_appservice_javase-quarkus_README_md.yml)
| 13. [Deploy a Spring Boot application using managed JavaSE](compute/appservice/javase-springboot/README.md) | [Workflow](.github/workflows/compute_appservice_javase-springboot_README_md.yml) | [![compute/appservice/javase-springboot/README.md](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/compute_appservice_javase-springboot_README_md.yml/badge.svg)](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/compute_appservice_javase-springboot_README_md.yml)
| 14. [Deploy a web application on a managed JBoss EAP](compute/appservice/jboss-eap-helloworld/README.md) | [Workflow](.github/workflows/compute_appservice_jboss-eap-helloworld_README_md.yml) | [![compute/appservice/jboss-eap-helloworld/README.md](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/compute_appservice_jboss-eap-helloworld_README_md.yml/badge.svg)](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/compute_appservice_jboss-eap-helloworld_README_md.yml)
| 15. [List your web applications](compute/appservice/list-webapp/README.md) | [Workflow](.github/workflows/compute_appservice_list-webapp_README_md.yml) | [![compute/appservice/list-webapp/README.md](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/compute_appservice_list-webapp_README_md.yml/badge.svg)](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/compute_appservice_list-webapp_README_md.yml)
| 16. [Scale your App Service Plan manually](compute/appservice/scale-manually/README.md) | [Workflow](.github/workflows/compute_appservice_scale-manually_README_md.yml) | [![compute/appservice/scale-manually/README.md](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/compute_appservice_scale-manually_README_md.yml/badge.svg)](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/compute_appservice_scale-manually_README_md.yml)
| 17. [Swap a deployment slot](compute/appservice/swap-deployment-slot/README.md) | [Workflow](.github/workflows/compute_appservice_swap-deployment-slot_README_md.yml) | [![compute/appservice/swap-deployment-slot/README.md](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/compute_appservice_swap-deployment-slot_README_md.yml/badge.svg)](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/compute_appservice_swap-deployment-slot_README_md.yml)
| 18. [Deploy a web application on a managed Tomcat](compute/appservice/tomcat-helloworld/README.md) | [Workflow](.github/workflows/compute_appservice_tomcat-helloworld_README_md.yml) | [![compute/appservice/tomcat-helloworld/README.md](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/compute_appservice_tomcat-helloworld_README_md.yml/badge.svg)](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/compute_appservice_tomcat-helloworld_README_md.yml)

### Azure Functions examples

| Name | Link | Status
| ---- | ---- | ------
| 1. [Deploy a Cosmos DB output Function](compute/functions/cosmosdb-output/README.md) | [Workflow](.github/workflows/compute_functions_cosmosdb-output_README_md.yml) | [![compute/functions/cosmosdb-output/README.md](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/compute_functions_cosmosdb-output_README_md.yml/badge.svg)](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/compute_functions_cosmosdb-output_README_md.yml)
| 2. [Install Azure Functions Core Tools](compute/functions/install-tools/README.md) | [Workflow](.github/workflows/compute_functions_install-tools_README_md.yml) |[![compute/functions/install-tools/README.md](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/compute_functions_install-tools_README_md.yml/badge.svg)](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/compute_functions_install-tools_README_md.yml)
| 3. [Deploy a Java Function](compute/functions/java/README.md) | [Workflow](.github/workflows/compute_functions_java_README_md.yml) | [![compute/functions/java/README.md](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/compute_functions_java_README_md.yml/badge.svg)](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/compute_functions_java_README_md.yml)

### Azure Spring Cloud examples

| Name | Link | Status
| ---- | ---- | ------
| 1. [Create an Azure Spring Cloud](compute/spring-cloud/create/README.md) | [Workflow](.github/workflows/compute_spring-cloud_create_README_md.yml) | [![compute/spring-cloud/create/README.md](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/compute_spring-cloud_create_README_md.yml/badge.svg)](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/compute_spring-cloud_create_README_md.yml)
| 2. [Configure the Azure Spring Cloud Config Server](compute/spring-cloud/config-server/README.md) | [Workflow](.github/workflows/compute_spring-cloud_config-server_README_md.yml) | [![compute/spring-cloud/config-server/README.md](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/compute_spring-cloud_config-server_README_md.yml/badge.svg)](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/compute_spring-cloud_config-server_README_md.yml)
| 3. [Deploy a Hello World Spring Boot application to Azure Spring Cloud](compute/spring-cloud/helloworld/README.md) | [Workflow](.github/workflows/compute_spring-cloud_helloworld_README_md.yml) | [![compute/spring-cloud/helloworld/README.md](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/compute_spring-cloud_helloworld_README_md.yml/badge.svg)](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/compute_spring-cloud_helloworld_README_md.yml)

## Additional examples

1. [Azure Cache for Redis examples](redis/README.md)            <!-- workflows run Sunday    / 1 example   -->
1. [Azure Container Apps examples](containerapp/README.md)      <!-- workflows run Tuesday   / 9 examples  -->
1. [Azure Container Instances examples](container/README.md)    <!-- workflows run Monday    / 3 examples  -->
1. [Azure Container Registry examples](acr/README.md)           <!-- workflows run Sunday    / 15 examples -->
1. [Azure Cosmos DB examples](cosmosdb/README.md)               <!-- workflows run Thursday  / 8 examples  -->
1. [Azure Database for MySQL examples](mysql/README.md)         <!-- workflows run Tuesday   / 4 examples  -->
1. [Azure Database for PostgreSQL examples](postgres/README.md) <!-- workflows run Monday    / 4 examples  -->
1. [Azure Key Vault examples](keyvault/README.md)               <!-- workflows run Tuesday   / 6 examples  -->
1. [Azure Kubernetes Service examples](aks/README.md)           <!-- workflows run Saturday  / 7 examples  -->
1. [Azure Monitor examples](monitor/README.md)                  <!-- workflows run Thursday  / 1 example   -->
1. [Azure Networking examples](network/README.md)               <!-- workflows run Wednesday / 1 example   -->
1. [Azure Red Hat OpenShift examples](aro/README.md)            <!-- workflows run Friday    / 1 example   -->
1. [Azure Resource Group examples](group/README.md)             <!-- workflows run Saturday  / 2 examples  -->
1. [Azure Service Bus examples](servicebus/README.md)           <!-- workflows run Friday    / 9 examples  -->
1. [Azure SQL Database examples](sql/README.md)                 <!-- workflows run Wednesday / 4 examples  -->
1. [Azure Storage examples](storage/README.md)                  <!-- workflows run Monday    / 3 examples  -->

<!-- next day for workflows is Wednesday -->

## Contributing

How do I contribute? See [Contributing](CONTRIBUTING.md)
