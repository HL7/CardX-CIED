// 05/11/2025 - Encounter profile will be included in future version of the IG when IDCO is included.

/*
Profile: CIEDEncounter
Parent: Encounter
Id: remote-encounter
Title: "CIED Remote Device Interrogation Encounter Profile"
Description: "An CIED Remote Device Interrogation profile of the Encounter resource."
* identifier MS
* status MS
* type 1..1 MS
* type from 11073-10103-SessionType
* subject 1..1 MS
* subject only Reference(CIEDPatient)
* participant 1..* MS

Instance: uc1ScheduledInterrogation1
InstanceOf: CIEDEncounter
Description: "Example encounter for scheduled interrogation"
Usage: #example
* status = http://hl7.org/fhir/encounter-status#planned
* subject = Reference(uc1Patient)
* participant.actor = Reference(uc1CiedDevice)
* type = IDC#754053
*/