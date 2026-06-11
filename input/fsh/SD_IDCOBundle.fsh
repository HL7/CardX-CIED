Profile: IDCOBundle
Parent: Bundle
Id: idco-bundle
Title: "Implantable Device Cardiac Observation (IDCO) Bundle"
Description: """
Once a manufacturer processes a device transmission, they can packing the observation date, report, patient, and device demographics
as a Collection Bundle

The Bundle 'entry' will contain a combination of the following resources:

*list of resources and links to profiles
"""
* type = #collection
* timestamp 1..1 MS
  * ^short = "Instant the bundle was created"
* entry
  * ^slicing.discriminator[+].type = #type
  * ^slicing.discriminator[=].path = "resource"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "resource.ofType(Observation).code"
  * ^slicing.rules = #open
* entry 1..* MS
* entry contains
    CIEDDeviceAssociation 0..* MS and
    CIEDDevice 0..* MS and
    CIEDDeviceLead 0..* MS and
    CIEDDiagnosticReport 1..1 MS and
    IdcoObservation 0..* MS and
    CIEDPatient 1..1 MS and
    CIEDOrganization 0..1 MS and
    CIEDPractioner 0..1 MS
* entry[CIEDDeviceAssociation].resource only CIEDDeviceAssociation
* entry[CIEDDevice].resource only CIEDDevice
* entry[CIEDDeviceLead].resource only CIEDDeviceLead
* entry[CIEDDiagnosticReport].resource only CIEDDiagnosticReport
* entry[IdcoObservation].resource only IdcoObservation
* entry[CIEDPatient].resource only CIEDPatient
* entry[CIEDOrganization].resource only CIEDOrganization
* entry[CIEDPractioner].resource only CIEDPractioner