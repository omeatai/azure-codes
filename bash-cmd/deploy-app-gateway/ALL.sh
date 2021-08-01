#Create Resource Group
az group create \
  --name RG-LAB22 \
  --location eastus \

#Create Virtual Network with 2 Subnets
az network vnet create \
  --name vNET-LAB22 \
  --address-prefixes 10.0.0.0/16 \
  --resource-group RG-LAB22 \
  --location eastus \
  --network-security-group "" \
  --subnet-name Subnet1 \
  --subnet-prefixes 10.0.0.0/24 \

az network vnet subnet create \
  --name Subnet2 \
  --address-prefixes 10.0.1.0/24 \
  --vnet-name vNET-LAB22 \
  --resource-group RG-LAB22 \
  --network-security-group "" \
  
# Create a Network Security Group For VM1
az network nsg create \
  --name NSG-VM1 \
  --resource-group RG-LAB22 \
  --location eastus \

# Create Network Security Group Rule AllowHTTPInbound For NSG-VM1
az network nsg rule create \
  --name AllowHTTPInbound \
  --nsg-name NSG-VM1 \
  --resource-group RG-LAB22 \
  --protocol Tcp \
  --direction Inbound \
  --source-address-prefixes '*' \
  --source-port-ranges '*' \
  --destination-address-prefixes 'VirtualNetwork' \
  --destination-port-ranges 80 \
  --access Allow \
  --priority 200 \

# Create Network Security Group Rule AllowSSHInbound For NSG-VM1
az network nsg rule create \
  --name AllowSSHInbound \
  --nsg-name NSG-VM1 \
  --resource-group RG-LAB22 \
  --protocol Tcp \
  --direction Inbound \
  --source-address-prefixes '*' \
  --source-port-ranges '*' \
  --destination-address-prefixes 'VirtualNetwork' \
  --destination-port-ranges 22 \
  --access Allow \
  --priority 100 \





