
variable "child_rg" {
  description = "Map of child resource groups to create"
  type = map(object({
    resource_group_name = string
    location            = string
    tags                = map(string)
  }))
}
