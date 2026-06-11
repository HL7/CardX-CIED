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
* statusReason MS
* subject MS
* period MS