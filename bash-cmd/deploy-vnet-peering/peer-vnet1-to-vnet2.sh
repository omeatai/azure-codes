#Connect Local Peer vNET-1 to vNET-2
az network vnet peering create \
    --name vNET-1-to-vNET-2 \
    --remote-vnet vNET-2 \
    --resource-group RG-LAB23 \
    --vnet-name vNET-1 \
    --allow-vnet-access