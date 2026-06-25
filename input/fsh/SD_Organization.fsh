Profile: CIEDOrganization
Parent: Organization
Id: cied-organization
Title: "Organization - Cardiovascular Implantable Electronic Device (CIED)"
Description: "
The CIED Organization profile contains the metadata for an organization associated with a device interrogation.
"
* identifier
* name MS

Instance: ACMEOrganization
InstanceOf: CIEDOrganization
Description: "An example organization for CIED connectivity example 1."
* identifier[0].use = #official
* identifier[0].system = "http://example.org"
* identifier[0].value = "ACME-ORG-001"
* name = "ACME Medical Center"