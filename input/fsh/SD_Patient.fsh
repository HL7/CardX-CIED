Profile: CIEDPatient
Parent: Patient
Id: cied-patient
Title: "Patient - CIED Patient Profile"
Description: "The CardX CIED patient profile is interoperable with the PID segment of the IHE Patient Care Device Technical Framework, Vol. 2,
Section 3.9 - Communicate IDC Observations. The data elements in the FHIR profile are aligned, including allowing for the use of a concatenated Device Model and Serial Number 
to represent a unique patient identifier."
* identifier 0..* MS
* identifier.type from CIEDPatientIdentifier (extensible)
* name MS
* telecom MS
* birthDate MS
* address MS
* gender MS

/*
Mapping: fhir-patient-to-idco
*/

Instance: uc1ACMEPatient
InstanceOf: CIEDPatient
Description: "An example CIED patient for CIED connectivity example 1."
* name
  * given[0] = "Jim"
  * given[1] = "ACME"
  * family = "Doe"
* identifier[0].use = #official
* identifier[0].system = "http://example.org"
* identifier[0].value = "ACME1111"
* telecom[0].system =  http://hl7.org/fhir/contact-point-system#phone
* telecom[0].value = "111-555-4444"
* telecom[0].use = http://hl7.org/fhir/contact-point-use#mobile
* address[0].use =  http://hl7.org/fhir/address-use#home
* address[0].line = "1234 Main Street"
* address[0].city = "Springfield"
* address[0].state = https://www.usps.com#IL
* address[0].postalCode = "12345"
* birthDate = "1958-01-01"
// * gender = http://hl7.org/fhir/ValueSet/administrative-gender#male
* gender = #male

Instance: uc2ACMEPatient
InstanceOf: CIEDPatient
Description: "An example CIED patient for CIED connectivity example 2."
* name
  * given[0] = "John"
  * given[1] = "ACME"
  * family = "Doe"
* identifier[0].use = #official
* identifier[0].system = "http://example.org"
* identifier[0].value = "ACME2222"
* telecom[0].system =  http://hl7.org/fhir/contact-point-system#phone
* telecom[0].value = "111-555-4444"
* telecom[0].use = http://hl7.org/fhir/contact-point-use#mobile
* address[0].use =  http://hl7.org/fhir/address-use#home
* address[0].line = "1234 Main Street"
* address[0].city = "Springfield"
* address[0].state = https://www.usps.com#IL
* address[0].postalCode = "12345"
* birthDate = "1954-01-01"

Instance: uc3ACMEPatient
InstanceOf: CIEDPatient
Description: "An example CIED patient for CIED connectivity example 3."
* name
  * given[0] = "Jane"
  * given[1] = "ACME"
  * family = "Doe"
* identifier[0].use = #official
* identifier[0].system = "http://example.org"
* identifier[0].value = "ACME3333"
* telecom[0].system =  http://hl7.org/fhir/contact-point-system#phone
* telecom[0].value = "111-555-4444"
* telecom[0].use = http://hl7.org/fhir/contact-point-use#mobile
* address[0].use =  http://hl7.org/fhir/address-use#home
* address[0].line = "1234 Main Street"
* address[0].city = "Springfield"
* address[0].state = https://www.usps.com#IL
* address[0].postalCode = "12345"
* birthDate = "1964-01-01"

Instance: uc4ACMEPatient
InstanceOf: CIEDPatient
Description: "An example CIED patient for CIED connectivity example 4."
* name
  * given[0] = "Jane"
  * given[1] = "ACME"
  * family = "Doe"
* identifier[0].use = #official
* identifier[0].system = "http://example.org"
* identifier[0].value = "ACME4444"
* telecom[0].system =  http://hl7.org/fhir/contact-point-system#phone
* telecom[0].value = "111-555-4444"
* telecom[0].use = http://hl7.org/fhir/contact-point-use#mobile
* address[0].use =  http://hl7.org/fhir/address-use#home
* address[0].line = "1234 Main Street"
* address[0].city = "Springfield"
* address[0].state = https://www.usps.com#IL
* address[0].postalCode = "12345"
* birthDate = "1964-01-01"

Instance: uc5ACMEPatient
InstanceOf: CIEDPatient
Description: "An example CIED patient for CIED connectivity example 5."
* name
  * given[0] = "Jimmy"
  * given[1] = "ACME"
  * family = "Doe"
* identifier[0].use = #official
* identifier[0].system = "http://example.org"
* identifier[0].value = "ACME5555"
* telecom[0].system =  http://hl7.org/fhir/contact-point-system#phone
* telecom[0].value = "111-555-4444"
* telecom[0].use = http://hl7.org/fhir/contact-point-use#mobile
* address[0].use =  http://hl7.org/fhir/address-use#home
* address[0].line = "1234 Main Street"
* address[0].city = "Springfield"
* address[0].state = https://www.usps.com#IL
* address[0].postalCode = "12345"
* birthDate = "1952-01-01"
