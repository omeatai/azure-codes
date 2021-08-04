#Create Resource Group Eastus
az group create \
  --name RG-LAB23 \
  --location eastus

#Create Virtual Network 1
az network vnet create \
    --resource-group RG-LAB23 \
    --name vNET-1 \
    --address-prefix 10.0.0.0/16 \
    --subnet-name Subnet-1 \
    --subnet-prefix 10.0.0.0/24 \
    --location eastus

#Create Virtual Network 2
az network vnet create \
    --resource-group RG-LAB23 \
    --name vNET-2 \
    --address-prefix 10.1.0.0/16 \
    --subnet-name Subnet-2 \
    --subnet-prefix 10.1.0.0/24 \
    --location eastus

#Create Virtual Network 3
az network vnet create \
    --resource-group RG-LAB23 \
    --name vNET-3 \
    --address-prefix 10.2.0.0/16 \
    --subnet-name Subnet-3 \
    --subnet-prefix 10.2.0.0/24 \
    --location westeurope

az vm create \
    --resource-group RG-14-CONNECT-vNETs \
    --no-wait \
    --name VM-A \
    --location westeurope \
    --vnet-name vNET-A \
    --subnet Subnet-01-vNET-A \
    --image UbuntuLTS \
    --size Standard_B1s \
    --admin-username adminuser \
    --admin-password adminadmin123!

az vm create \
    --resource-group RG-14-CONNECT-vNETs \
    --no-wait \
    --name VM-B \
    --location westeurope \
    --vnet-name vNET-B \
    --subnet Subnet-01-vNET-B \
    --image UbuntuLTS \
    --size Standard_B1s \
    --admin-username adminuser \
    --admin-password adminadmin123!

az vm create \
    --resource-group RG-14-CONNECT-vNETs \
    --no-wait \
    --name VM-C \
    --location northeurope \
    --vnet-name vNET-C \
    --subnet Subnet-01-vNET-C \
    --image UbuntuLTS \
    --size Standard_B1s \
    --admin-username adminuser \
    --admin-password adminadmin123!