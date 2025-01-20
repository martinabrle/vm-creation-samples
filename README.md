# vm-creation-samples
VM creation samples

Samples in this repository originate from https://learn.microsoft.com/en-us/azure/virtual-machines/linux/quick-create-cli

## Deploy a VM using Bicep

### Create a resource group
```bash 
az group create --name my_bicep_vm_rg --location switzerlandnorth
```

### Deploy a virtual machine using Bicep template
```bash
cd ./bicep
az deployment group create --resource-group my_bicep_vm_rg --template-file ./main.bicep --param ./main.bicepparam
```

### Delete the newly created resource group
```bash
az group delete --name my_bicep_vm_rg --yes --no-wait
```

## Deploy a VM using Terraform

### Deploy a virtual machine using a Terraform template
```bash
cd ./terraform
terraform init -upgrade # initialize the Terraform deployment; downloads the Azure provider required to manage your Azure resources
terraform plan -out main.tfplan # shows the resources that will be created
terraform apply main.tfplan
```

### Delete the newly created resource group
```bash
az group delete --name ***  --yes --no-wait
``` 

## Deploy a VM using ARM template
https://learn.microsoft.com/en-us/azure/virtual-machines/linux/quick-create-template
