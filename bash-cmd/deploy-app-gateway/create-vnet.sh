#Create Virtual Network with 2 Subnets
az network vnet create \
--resource-group RG-LAB22 \
--name vNET-LAB22 \
--address-prefix 10.0.0.0/16 \
--subnet-name Subnet1 \
--subnet-prefix 10.0.0.0/24 \

az network vnet subnet create \ 
--name Subnet2 \ 
--vnet-name vNET-LAB22 \ 
--resource-group RG-LAB22 \
--address-prefixes 10.0.1.0/24
