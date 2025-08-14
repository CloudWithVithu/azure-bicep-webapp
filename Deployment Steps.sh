# Create Resource Group
az group create --name rg-bicep-demo --location eastasia

# Deploy Bicep Template
az deployment group create --name webapp-deployment --resource-group rg-bicep-demo --template-file main.bicep

# Verify Deployment
az webapp list --resource-group rg-bicep-demo --query "[].defaultHostName" -o table

# Open Web App
"https://<your-webapp-name>.azurewebsites.net"


