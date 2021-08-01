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
#List Resource Groups
----------------------
az group list -o table\
az group show --name RG-LAB22 -o table

----------------------
#Create Virtual Network with 2 Subnets
----------------------
az network vnet create \\\
	--name vNET-LAB22 \\\
	--address-prefixes 10.0.0.0/16 \\\
	--resource-group RG-LAB22 \\\
	--location eastus \\\
	--network-security-group "" \\\
	--subnet-name Subnet1 \\\
	--subnet-prefixes 10.0.0.0/24 \\

az network vnet subnet create \\\
	--name Subnet2 \\\
	--address-prefixes 10.0.1.0/24 \\\
	--vnet-name vNET-LAB22 \\\
	--resource-group RG-LAB22 \\\
	--network-security-group "" 

----------------------
#List Virtual Networks
----------------------
az network vnet list -o table\
az network vnet show -g RG-LAB22 -n vNET-LAB22 -o table





