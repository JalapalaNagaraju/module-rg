variable "vnetName" {
  type        = string
  description = "Name of the vnet to create"
}

variable "rgName" {
  type        = string
  description = "Name of the resource group to be imported"
}

variable "vnetCIDR" {
  type        = list(string)
  description = "The address space that is used by the virtual network"
}

# If no values specified, this defaults to Azure DNS 
variable "dnsServers" {
  type        = list(string)
  description = "The DNS servers to be used with vNet"
  default     = []
}

variable "subnetPrefixes" {
  type        = list(string)
  description = "The address prefix to use for the subnet"
}

variable "subnetNames" {
  type        = list(string)
  description = "A list of public subnets inside the vNet"
}

variable "nsgIds" {
  description = "A map of subnet name to Network Security Group IDs"
  type        = map(string)
  default     = {}
}

variable "common_tags" {}
