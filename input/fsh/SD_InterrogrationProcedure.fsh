Profile: CIEDInterrogationProcedure
Parent: Procedure
Id: cied-interrogation-procedure
Title: "CIED Interrogation Procedure Profile"
Description: "
The CIED Interrogation Procedure profile contains the session information for a device interrogation.
"
* identifier
* status MS
* code MS
* outcome MS
* report only Reference(CIEDDiagnosticReport)
* focalDevice.manipulated only Reference(CIEDDevice)
* performer MS

