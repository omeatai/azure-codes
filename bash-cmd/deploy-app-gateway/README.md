----------------------
DEPLOY APPLICATION GATEWAY PATH-BASED-ROUTING FOR AZURE VMS
----------------------

----------------------
#Create Resource Group
----------------------
az group create \\\
	&nbsp;&nbsp;&nbsp;--name RG-LAB22 \\\
	&nbsp;&nbsp;&nbsp;--location eastus

----------------------
#List Resource Groups
----------------------
az group list -o table\
az group show --name RG-LAB22 -o table

----------------------
#Create Virtual Network with 2 Subnets
----------------------
az network vnet create \\\
	&nbsp;&nbsp;&nbsp;--name vNET-LAB22 \\\
	&nbsp;&nbsp;&nbsp;--address-prefixes 10.0.0.0/16 \\\
	&nbsp;&nbsp;&nbsp;--resource-group RG-LAB22 \\\
	&nbsp;&nbsp;&nbsp;--location eastus \\\
	&nbsp;&nbsp;&nbsp;--network-security-group "" \\\
	&nbsp;&nbsp;&nbsp;--subnet-name Subnet1 \\\
	&nbsp;&nbsp;&nbsp;--subnet-prefixes 10.0.0.0/24 \\

az network vnet subnet create \\\
	&nbsp;&nbsp;&nbsp;--name Subnet2 \\\
	&nbsp;&nbsp;&nbsp;--address-prefixes 10.0.1.0/24 \\\
	&nbsp;&nbsp;&nbsp;--vnet-name vNET-LAB22 \\\
	&nbsp;&nbsp;&nbsp;--resource-group RG-LAB22 \\\
	&nbsp;&nbsp;&nbsp;--network-security-group "" 

----------------------
#List Virtual Networks
----------------------
az network vnet list -o table\
az network vnet show -g RG-LAB22 -n vNET-LAB22 -o table





