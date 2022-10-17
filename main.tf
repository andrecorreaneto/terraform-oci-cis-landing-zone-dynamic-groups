# Copyright (c) 2022 Oracle and/or its affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.

resource "oci_identity_dynamic_group" "these" {
  for_each = var.dynamic_groups
    name           = each.value.name
    description    = each.value.description
    compartment_id = var.tenancy_id
    matching_rule  = each.value.matching_rule
    defined_tags   = each.value.defined_tags
    freeform_tags  = each.value.freeform_tags
}