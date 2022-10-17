# Copyright (c) 2022 Oracle and/or its affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.

#--------------------------------------------------------------------------------------------------------------
# The dynamic_groups variable defines a Terraform object describing any set of OCI IAM dynamic groups.
# The object defines sub-objects indexed by uppercased strings, like IAM-ADMIN-GROUP, COST-ADMIN-GROUP, etc.
# These strings can actually be any random string, but once defined they MUST NOT BE CHANGED, 
# or Terraform will try to destroy and recreate the dynamic groups.
# The sub-objects have a matching_rule attribute that define the principals assigned to the dynamic group. 
# The matching_rule attribute must be completed with the appropriate compartment OCIDs.
#---------------------------------------------------------------------------------------------------------------

dynamic_groups = {  
  SEC-FUN-DYN-GROUP : { 
    name : "cislz-sec-fun-dynamic-group-2",  
    description : "CIS Landing Zone dynamic group for security functions execution.",      
    #matching_rule : "ALL {resource.type = 'fnfunc',resource.compartment.id = 'REPLACE-THIS-BY-THE-SECURITY-COMPARTMENT-OCID'}", 
    matching_rule : "ALL {resource.type = 'fnfunc',resource.compartment.id = 'ocid1.compartment.oc1..aaaaaaaay4cswo7uwsvle46drbmaiqnycstmrqhg3a32hc4kugfn4v4xer6a'}",
    defined_tags : null, 
    freeform_tags : {"cis-landing-zone":"quickstart","grp-type":"dyn-security" }
  },
  APPDEV-FUN-DYN-GROUP : { 
    name : "cislz-appdev-fun-dynamic-group-2",  
    description : "CIS Landing Zone dynamic group for application functions execution.",      
    #matching_rule : "ALL {resource.type = 'fnfunc',resource.compartment.id = 'REPLACE-THIS-BY-THE-APPLICATION-COMPARTMENT-OCID'}", 
    matching_rule : "ALL {resource.type = 'fnfunc',resource.compartment.id = 'ocid1.compartment.oc1..aaaaaaaazvrh56miqilnsvf6keo7busyps6eb6o7mghii6dy4k4eugnliqqa'}",
    defined_tags : null, 
    freeform_tags : {"cis-landing-zone":"quickstart","grp-type":"dyn-application" }
  },  
  APPDEV-COMPUTE-AGENT-DYN-GROUP : { 
    name : "cislz-appdev-computeagent-dynamic-group-2",  
    description : "CIS Landing Zone dynamic group for Compute Agent plugin execution.",      
    #matching_rule : "ALL {resource.type = 'managementagent',resource.compartment.id = 'REPLACE-THIS-BY-THE-APPLICATION-COMPARTMENT-OCID'}", 
    matching_rule : "ALL {resource.type = 'managementagent',resource.compartment.id = 'ocid1.compartment.oc1..aaaaaaaazvrh56miqilnsvf6keo7busyps6eb6o7mghii6dy4k4eugnliqqa'}", 
    defined_tags : null, 
    freeform_tags : {"cis-landing-zone":"quickstart","grp-type":"dyn-application" }
  },                                        
  DATABASE-KMS-DYN-GROUP : { 
    name : "cislz-database-kms-dynamic-group-2",  
    description : "CIS Landing Zone dynamic group for databases accessing Key Management service (aka Vault service).",      
    #matching_rule : "ALL {resource.compartment.id = 'REPLACE-THIS-BY-THE-DATABASE-COMPARTMENT-OCID'}", 
    matching_rule : "ALL {resource.compartment.id = 'ocid1.compartment.oc1..aaaaaaaa3tfgnpzumgfzf34dupp7qwukuf5gjtvoe7zuw534qqk33nlvjvfa'}", 
    defined_tags : null, 
    freeform_tags : {"cis-landing-zone":"quickstart","grp-type":"dyn-database" }
  }
}
