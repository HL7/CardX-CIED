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
* statusReason MS
* subject MS
* subject only Reference(CIEDPatient)
* period MS