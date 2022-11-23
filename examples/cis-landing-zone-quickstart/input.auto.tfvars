# Copyright (c) 2022 Oracle and/or its affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.

#-----------------------------------------------------------------------------------------------------------------
# The dynamic_groups variable defines a Terraform object describing any set of OCI IAM dynamic groups.
# The object defines sub-objects indexed by uppercased strings, like SEC-FUN-DYN-GROUP, APPDEV-FUN-DYN-GROUP, etc.
# These strings can actually be any random strings, but once defined they MUST NOT BE CHANGED, 
# or Terraform will try to destroy and recreate the dynamic groups.
# The sub-objects have a matching_rule attribute that define the principals assigned to the dynamic group. 
# The matching_rule attribute must be completed with the appropriate compartment OCIDs as indicated by 
# the <REPLACE-THIS-BY-*> strings.
#------------------------------------------------------------------------------------------------------------------

dynamic_groups = {  
  SEC-FUN-DYN-GROUP : { 
    name : "vision-sec-fun-dynamic-group",  
    description : "CIS Landing Zone dynamic group for security functions execution.",      
    matching_rule : "ALL {resource.type = 'fnfunc',resource.compartment.id = '<REPLACE-THIS-BY-SECURITY-COMPARTMENT-OCID>'}", 
    defined_tags : null, 
    freeform_tags : null
  },
  APPDEV-FUN-DYN-GROUP : { 
    name : "vision-appdev-fun-dynamic-group",  
    description : "CIS Landing Zone dynamic group for application functions execution.",      
    matching_rule : "ALL {resource.type = 'fnfunc',resource.compartment.id = '<REPLACE-THIS-BY-APPLICATION-COMPARTMENT-OCID>'}", 
    defined_tags : null, 
    freeform_tags : null
  },  
  APPDEV-COMPUTE-AGENT-DYN-GROUP : { 
    name : "vision-appdev-computeagent-dynamic-group",  
    description : "CIS Landing Zone dynamic group for Compute Agent plugin execution.",      
    matching_rule : "ALL {resource.type = 'managementagent',resource.compartment.id = '<REPLACE-THIS-BY-APPLICATION-COMPARTMENT-OCID>'}", 
    defined_tags : null, 
    freeform_tags : null
  },                                        
  DATABASE-KMS-DYN-GROUP : { 
    name : "vision-database-kms-dynamic-group",  
    description : "CIS Landing Zone dynamic group for databases accessing Key Management service (aka Vault service).",      
    matching_rule : "ALL {resource.compartment.id = '<REPLACE-THIS-BY-DATABASE-COMPARTMENT-OCID>'}", 
    defined_tags : null, 
    freeform_tags : null
  }
}
