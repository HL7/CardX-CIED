Profile: CIEDPatient
Parent: Patient
Id: cied-patient
Title: "Cardiovascular Implantable Electronic Device Patient Profile"
Description: "An CIED profile of the Patient resource."
* identifier MS
* identifier.type from cied-patient-identifier (extensible)
* name MS
* telecom MS
* birthDate MS
* address MS

/*
Mapping: fhir-patient-to-idco
*/

Instance: uc1Patient
InstanceOf: CIEDPatient
Description: "An example CIED patient for CIED connectivity example 1."
* name
  * given[0] = "John"
  * given[1] = "Test"
  * family = "ICDPatient"
* identifier[0].use = #official
* identifier[0].value = "ICD123456789"
* identifier[0].type = http://terminology.hl7.org/CodeSystem/v2-0203#MR
* identifier[0].assigner.display = "Acme Devices"
* identifier[1].use = http://hl7.org/fhir/identifier-use#usual
* identifier[1].value = "ICD123456789"
* identifier[1].type = http://hl7.org/fhir/ValueSet/v2-0203#MR
* identifier[1].assigner.display = "Acme Devices"
* identifier[1].system = "urn:oid:1.2.36.146.595.217.0.4"
* telecom[0].system =  http://hl7.org/fhir/contact-point-system#phone
* telecom[0].value = "111-555-4444"
* telecom[0].use = http://hl7.org/fhir/contact-point-use#mobile
* address[0].use =  http://hl7.org/fhir/address-use#home
* address[0].line = "1234 Main Street"
* address[0].city = "Springfield"
* address[0].state = https://www.usps.com#IL
* address[0].postalCode = "12345"
* birthDate = "1970-01-01"