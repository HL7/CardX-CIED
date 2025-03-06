Profile: CIEDEncounter
Parent: Encounter
Id: RemoteEncounter
Title: "CIED Remote Transmission Encounter Profile"
Description: "An CIED Remote Transmission profile of the Encounter resource."
* identifier MS
* status MS
* type 1..1 MS
* type from 11073-10103-SessionType
* subject 1..1 MS
* subject only Reference(CIEDPatient)
* participant 1..* MS

Instance: uc1-scheduled-transmission-1
InstanceOf: CIEDEncounter
Description: "Example encounter for scheduled transmission"
Usage: #example
* status = http://hl7.org/fhir/encounter-status#planned
* subject = Reference(uc1-patient)
* participant.actor = Reference(uc1-cied-device)
* type = IDCO#754053