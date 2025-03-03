output "virtual_network_resource_ids" {
  description = "The created virtual network resource IDs, expressed as a map."
  value = {
    for k, v in azapi_resource.vnet : k => v.id
  }
}

output "virtual_network_resource_names" {
  description = "The created virtual network names, expressed as a map"
  value = {
    for k, v in azapi_resource.vnet : k => v.name
  }
}

output "resource_group_ids" {
  description = "The created resource group IDs, expressed as a map."
  value = {
    for k, v in azapi_resource.rg : k => v.id
  }
}
