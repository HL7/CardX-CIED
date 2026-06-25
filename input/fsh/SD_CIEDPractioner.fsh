Profile: CIEDPractioner
Parent: Practitioner
Id: cied-practioner
Title: "CIED Practioner Profile"
Description: "
The CIED Practioner profile contains the metadata for a healthcare provider associated with a device interrogation.
"
* identifier
* name MS
* telecom MS
* address MS

Instance: ExamplePractitioner
InstanceOf: CIEDPractioner
Description: "An example CIED practitioner for CIED connectivity example 1."
Usage: #example
* identifier[0].use = #official
* identifier[0].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[0].value = "1234567890"
* name
  * given[0] = "Jane"
  * family = "Smith"
  * prefix[0] = "Dr."
* telecom[0].system = http://hl7.org/fhir/contact-point-system#phone
* telecom[0].value = "555-867-5309"
* telecom[0].use = http://hl7.org/fhir/contact-point-use#work
* address[0].use = http://hl7.org/fhir/address-use#work
* address[0].line = "1234 Main Street"
* address[0].city = "Springfield"
* address[0].state = https://www.usps.com#IL
* address[0].postalCode = "12345"