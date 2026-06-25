Extension: AssociationStatus
Id: association-status-extension
Title: "Association Status Extension"
Description: "Extension to represent the state of the association between the device/patient/lead."
* insert ExtensionContext(DeviceAssociation)
* valueCodeableConcept MS
* valueCodeableConcept from http://hl7.org/fhir/ValueSet/deviceassociation-association-status

Profile: CIEDDeviceAssociation
Parent: DeviceAssociation
Id: cied-device-association
Title: "Device Association - Cardiovascular Implantable Electronic Device (CIED)"
Description: "
Device association contains to relationship between the CIED, leads, and other devices associated with a patient. The resource may contain both active
and historical associations.
"
* identifier
* device MS
* status MS
* extension contains AssociationStatus named associationStatus 1..1 MS
* subject MS
* operation.status MS
* period MS

Instance: ACMEDevicePatientAssociation
InstanceOf: CIEDDeviceAssociation
Description: "An example device association between a CIED and a patient."
Usage: #example
* extension[associationStatus].valueCodeableConcept = http://hl7.org/fhir/device-association-status#implanted
* device = Reference(uc1ACMEICD)
* status = http://hl7.org/fhir/device-association-status#implanted
* subject = Reference(uc1ACMEPatient)
* period.start = "2020-06-01"

Instance: ACMEDeviceLeadAssociation
InstanceOf: CIEDDeviceAssociation
Description: "An example device association between a CIED and a lead."
Usage: #example
* extension[associationStatus].valueCodeableConcept = http://hl7.org/fhir/device-association-status#implanted
* device = Reference(ACMELead)
* status = http://hl7.org/fhir/device-association-status#implanted
* subject = Reference(uc1ACMEPatient)
* period.start = "2020-06-01"