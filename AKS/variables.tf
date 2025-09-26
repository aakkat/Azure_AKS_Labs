variable "resource_group_location" {
  type        = string
  default     = "westus"
  description = "Location of the resource group."
}

variable "resource_group_name_prefix" {
  type        = string
  default     = "rg"
  description = "Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription."
}

variable "resource_group_name" {
  type       = string
  default    = "rg-refined-swine"
  description = "Resource group name"
}

variable "kubernetes_cluster_name" {
  type	     = string
  default    =  "cluster-bursting-jennet"
  description = "kubernetes cluster name"
}

variable "node_count" {
  type        = number
  description = "The initial quantity of nodes for the node pool."
  default     = 3
}

variable "msi_id" {
  type        = string
  description = "The Managed Service Identity ID. Set this value if you're running this example using Managed Identity as the authentication method."
  default     = null
}

variable "username" {
  type        = string
  description = "The admin username for the new cluster."
  default     = "azureadmin"
}


variable "repository_name" {
  type        = string
  default     = "Azure_AKS_Labs"
  description = "Name of github repo"
}

variable "ref_branch" {
  type        = string
  default     = "main"
  description = "Name of branch"
}

variable "tenant_ids" {
  default     = "07fc8f44-8a45-4e66-973d-705143cdbdd1"
  description = "ID of tenant"
}

variable "subscription_ids" {
  default     = "94ef7338-97fb-4eba-8042-ef97ff5cebd4"
  description = "ID of subscription"
}


variable "client_ids" {
  default     = "8b939382-f5c5-4581-8ad0-9573ad670b19"
  description = "ID of Client"
}

variable "client_secrets" {
  default     = "aAg8Q~7kgbpY6KBi3Riha5kfCQrxlbn7re-nadkp"
  description = "client_secrets"
}
