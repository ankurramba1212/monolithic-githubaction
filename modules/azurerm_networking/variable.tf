variable "child_networks" {
  type = map(object({
    vnet_name           = string
    address_space       = list(string)
    location            = string
    resource_group_name = string
    tags                = map(string)
    subnets = optional(map(object({
      subnet_name           = string
      subnet_address_prefix = list(string)
    })), {})  # 👈 Default empty map agar subnets na diye gaye ho
  }))
}