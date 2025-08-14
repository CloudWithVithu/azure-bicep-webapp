# Azure Bicep Starter – Deploy Web App & Storage Account

## 📌 Overview
This project demonstrates how to use **Azure Bicep** to deploy a simple Azure environment containing:
- **Azure Storage Account** (for static files/backups)
- **Azure App Service Plan**
- **Azure Web App** (publicly accessible)

The entire deployment is automated using **Infrastructure-as-Code**.

---

## 🛠️ Tech Stack
- **Azure Bicep** – IaC for Azure
- **Azure CLI** – Deployment & resource management
- **Azure App Service** – Web hosting
- **Azure Storage** – Object storage
- **Basic App Service Plan** – Hosting tier

---

## 📂 Project Structure

```
azure-bicep-webapp/
│-- main.bicep 
│-- README.md

```
---

## 🖼 Architecture Diagram

```mermaid
graph TD
    A[Azure Resource Group: rg-bicep-demo] --> B[Azure Storage Account]
    A --> C[Azure App Service Plan]
    C --> D[Azure Web App]
    
    style A fill:#0078D4,stroke:#fff,stroke-width:2px,color:#fff
    style B fill:#F2C811,stroke:#333,stroke-width:1px
    style C fill:#00B294,stroke:#333,stroke-width:1px
    style D fill:#FF8C00,stroke:#333,stroke-width:1px
```

🎯 Key Skills Demonstrated

    - Writing Azure Bicep templates
    - Deploying resources with Azure CLI
    - Creating and linking Azure App Service & Storage Account
    - Infrastructure automation best practices


## 📸 Screenshots

### Azure Portal – Deployed Resources
![Azure Portal showing Web App and Storage Account](screenshots/Screenshot(242).png)

### Terminal – Successful Deployment
![Terminal output showing deployment success](screenshots/Screenshot(244).png)
![Terminal output showing deployment success](screenshots/Screenshot(245).png)

### Web App – Live URL
![Screenshot of the running Azure Web App](screenshots/Screenshot(243).png)
