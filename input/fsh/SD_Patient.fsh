Profile: CIEDPatient
Parent: Patient
Id: CIEDPatient
Title: "Cardiovascular Implantable Electronic Device Patient Profile"
Description: "An CIED profile of the Patient resource."
* identifier MS
* name MS
* telecom MS
// * deceased MS
* address MS
* managingOrganization MS


/*
Use Case 1

*/
Instance: uc1-patient
InstanceOf: CIEDPatient
Description: "An example CIED patient for CIED connectivity example 1."
* name
  * given[0] = "John"
  * given[1] = "Test"
  * family = "ICDPatient"
* identifier[0].use = http://hl7.org/fhir/identifier-use#usual
* identifier[0].value = "123456789"
// * identifier[0].assigner = "CIED Manufacturer"
// to do - add new organization and make reference
* identifier[0].system = "urn:oid:1.2.36.146.595.217.0.2"
* telecom[0].system =  http://hl7.org/fhir/contact-point-system#phone
* telecom[0].value = "111-555-4444"
* telecom[0].use = http://hl7.org/fhir/contact-point-use#mobile
* telecom[1].system =  http://hl7.org/fhir/contact-point-system#email
* telecom[1].value = "james.icdpatient@emailservice.com"
* address[0].use =  http://hl7.org/fhir/address-use#home
* address[0].line = "1234 Main Street"
* address[0].city = "Springfield"
* address[0].state = https://www.usps.com#IL
* address[0].postalCode = "12345"
// * managingOrganization = Reference(DeviceClinic1)
// need to create organization profile