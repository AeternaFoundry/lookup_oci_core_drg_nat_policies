data "oci_core_drg_nat_policies" "core_drg_nat_policies_lookup" {
  for_each = var.core_drg_nat_policies_lookup

  compartment_id = each.value.compartment_id
  display_name   = each.value.display_name

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

