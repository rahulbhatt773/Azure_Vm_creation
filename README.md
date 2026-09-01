# Azure_Vm_creation
VM creation using Terraform - Infrastructure as Code for Azure cloud resources

## Project Overview
This Terraform project automates the creation and management of Azure Virtual Machines along with their supporting infrastructure components.

## Folder Structure

### 📁 child_module/ 
Contains reusable Terraform modules for Azure resources:

- **public_ip/** - Module for creating Azure Public IP addresses
  - Assigns public IP addresses to VMs for external connectivity
  - Files: main.tf, variable.tf

- **resource_group/** - Module for creating Azure Resource Groups
  - Logical containers for managing related Azure resources
  - Files: main.tf, variable.tf

- **subnet/** - Module for creating Azure Subnets
  - Segments virtual networks into smaller network spaces
  - Files: main.tf, variable.tf

- **virtual_machine/** - Module for creating Azure Virtual Machines
  - Creates VMs with network interfaces and configurations
  - Files: main.tf, variable.tf, data.tf

- **virtual_network/** - Module for creating Azure Virtual Networks
  - Creates virtual networks for hosting subnets and resources
  - Files: main.tf, variable.tf

### 📁 environment/
Environment-specific configuration files:

- **main.tf** - Primary Terraform configuration that orchestrates all child modules with proper dependencies
- **provider.tf** - Azure provider (azurerm) configuration (version ~> 4.0, Terraform >= 1.5.0)
- **terraform.tfvars** - Environment variables and resource definitions
- **variable.tf** - Variable declarations and inputs for the environment

## Usage
1. Configure the `environment/terraform.tfvars` with your Azure settings
2. Run `terraform init` to initialize the Terraform working directory
3. Run `terraform plan` to review changes
4. Run `terraform apply` to create the infrastructure

## Requirements
- Terraform >= 1.5.0
- Azure Provider >= 4.0
- Valid Azure subscription credentials
