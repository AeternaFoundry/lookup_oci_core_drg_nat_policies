output "core_drg_nat_policies_lookup_id" {
  description = "Map of id values across all core_drg_nat_policies_lookup, keyed the same as var.core_drg_nat_policies_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_core_drg_nat_policies.core_drg_nat_policies_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "core_drg_nat_policies_lookup_compartment_id" {
  description = "Map of compartment_id values across all core_drg_nat_policies_lookup, keyed the same as var.core_drg_nat_policies_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_core_drg_nat_policies.core_drg_nat_policies_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "core_drg_nat_policies_lookup_display_name" {
  description = "Map of display_name values across all core_drg_nat_policies_lookup, keyed the same as var.core_drg_nat_policies_lookup except keys with no display_name are omitted"
  value       = { for k, v in data.oci_core_drg_nat_policies.core_drg_nat_policies_lookup : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "core_drg_nat_policies_lookup_drg_nat_policies" {
  description = "Map of drg_nat_policies values across all core_drg_nat_policies_lookup, keyed the same as var.core_drg_nat_policies_lookup except keys with no drg_nat_policies are omitted"
  value       = { for k, v in data.oci_core_drg_nat_policies.core_drg_nat_policies_lookup : k => v.drg_nat_policies if v.drg_nat_policies != null && length(v.drg_nat_policies) > 0 }
}
output "core_drg_nat_policies_lookup_filter" {
  description = "Map of filter values across all core_drg_nat_policies_lookup, keyed the same as var.core_drg_nat_policies_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_core_drg_nat_policies.core_drg_nat_policies_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}

