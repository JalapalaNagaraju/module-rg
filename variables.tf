variable "location" {
  description = "Azure regions locations to create the resource groups"
  type        = string
  default     = "North Europe"
}

variable "rgName" {
  description = "Resource Group name"
  type        = string
  default     = "nj-rj"
}
