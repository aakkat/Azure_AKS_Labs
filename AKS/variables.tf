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

variable "client_secret" {
  type        = string
  description = "Azure Service Principal client secret"
  sensitive   = true
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
