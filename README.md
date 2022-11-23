# CIS OCI Landing Zone IAM Dynamic Groups Module

![Landing Zone logo](./images/landing_zone_300.png)

This module manages IAM (Identity & Access Management) dynamic groups in OCI (Oracle Cloud Infrastructure) based on a single map of objects. Dynamic groups have their members dynamically defined by rules. These rules enable principal actors other than human users as IAM policy grantees. Dynamic groups can be made of a variety of OCI resources, like Database instances, Compute Instances, functions, to mention a few.

Check [module specification](./SPEC.md) for a full description of module requirements, supported variables, managed resources and outputs.

Check the [examples](./examples/) folder for module usage. Specifically, see [cis-landing-zone-quickstart](./examples/cis-landing-zone-quickstart/README.md) example for the dynamic groups deployed by [CIS OCI Landing Zone Quick Start](https://github.com/oracle-quickstart/oci-cis-landingzone-quickstart).

## Contributing
See [CONTRIBUTING.md](./CONTRIBUTING.md).

## License
Copyright (c) 2022, Oracle and/or its affiliates.

Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.

See [LICENSE](./LICENSE) for more details.

## Known Issues
None.
