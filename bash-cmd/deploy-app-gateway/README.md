----------------------
DEPLOY APPLICATION GATEWAY PATH-BASED-ROUTING FOR AZURE VMS
----------------------

----------------------
#Create Resource Group
----------------------
az group create \\\
--name RG-LAB22 \\\
--location eastus

----------------------
#Create Virtual Network with 2 Subnets
----------------------
az network vnet create \\\
--resource-group RG-LAB22 \\\
--name vNET-LAB22 \\\
--address-prefix 10.0.0.0/16 \\\
--subnet-name Subnet1 \\\
--subnet-prefix 10.0.0.0/24 \\\
\\\
az network vnet subnet create \\\
--resource-group RG-LAB22 \\\
--vnet-name vNET-LAB22 \\\
--name Subnet2 \\\ 
--address-prefix 10.0.1.0/24 

