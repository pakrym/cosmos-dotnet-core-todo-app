---
page_type: sample
languages:
- csharp
products:
- aspnet-core
- azure-cosmos-db
description: "This sample shows you how to use the Microsoft Azure Cosmos DB service to store and access data from an ASP.NET Core MVC application."
---

# Web application development with ASP.NET Core MVC using Azure Cosmos DB

This sample shows you how to use the Microsoft Azure Cosmos DB service to store and access data from an ASP.NET Core MVC application hosted on Azure App Service or running locally in your computer.

## Running this sample in Visual Studio

1. Before you can run this sample, you must have the following prerequisites:
    - Visual Studio 2017 (or higher).
    - Azure CLI (https://docs.microsoft.com/cli/azure/install-azure-cli).

1. Clone this repository using Git for Windows (http://www.git-scm.com/), or download the zip file.
1. Sign in with Azure CLI. (https://docs.microsoft.com/cli/azure/authenticate-azure-cli)
1. Run `.\dev.ps1 -ResourceGroup <resource_group_name> -Location <resource_group_location>`. This step will provision required Azure Resources and propagate connection information.
1. From Visual Studio, open the [todo.csproj](./src/todo.csproj).
1. You can now run and debug the application locally by pressing **F5** in Visual Studio.

## Running this sample from the .NET Core command line

1. Before you can run this sample, you must have the following prerequisites:
    - [.NET Core SDK 3.1 or higher](https://dotnet.microsoft.com/download)
    - Azure CLI (https://docs.microsoft.com/cli/azure/install-azure-cli).
1. Clone this repository using your Git command line, or download the zip file.
1. Sign in with Azure CLI. (https://docs.microsoft.com/cli/azure/authenticate-azure-cli)
1. Run `.\dev.ps1 -ResourceGroup <resource_group_name> -Location <resource_group_location>`. This step will provision required Azure Resources and propagate connection information.
1. You can now run and debug the application locally by running `dotnet run` and browsing the Url provided by the .NET Core command line.

### Deploy this sample to Azure with command line

1. Before you can run this sample, you must have the following prerequisites:
    - [.NET Core SDK 3.1 or higher](https://dotnet.microsoft.com/download)
    - Azure CLI (https://docs.microsoft.com/cli/azure/install-azure-cli).
1. Clone this repository using your Git command line, or download the zip file.
1. Sign in with Azure CLI. (https://docs.microsoft.com/cli/azure/authenticate-azure-cli).
    - Azure CLI (https://docs.microsoft.com/cli/azure/install-azure-cli).
1. Run `.\deploy.ps1 -ResourceGroup <resource_group_name> -Location <resource_group_location>`. This step will provision required Azure Resources and deploy the application code.

## About the code
The code included in this sample is intended to get you going with a simple ASP.NET Core MVC application that connects to Azure Cosmos DB. It is not intended to be a set of best practices on how to build scalable enterprise grade web applications. This is beyond the scope of this quick start sample. 

## More information

- [Azure Cosmos DB Documentation](https://docs.microsoft.com/azure/cosmos-db)
- [Azure Cosmos DB .NET SDK](https://docs.microsoft.com/azure/cosmos-db/sql-api-sdk-dotnet)
- [Azure Cosmos DB .NET SDK Reference Documentation](https://docs.microsoft.com/dotnet/api/overview/azure/cosmosdb?view=azure-dotnet)
