Profile: CIEDDiagnosticReport
Parent: DiagnosticReport
Id: cied-diagnostic-report
Title: "CIED Diagnostic Report Profile"
Description: "
The CIED Diagnostic Report Profile contains the metadata, device references,observation references, and attachments for an interrogated device transmission. Several device
and observation references may exist depending on the number of devices implanted in a patient and how the observation data are associated with the devices. Separate observations may
also be created during additional post-processing by the remote monitoring software or other processing systems used to interrogate the device data.
"
* identifier
* status MS
* code MS
* subject MS
* subject only Reference(CIEDPatient)
// 1/8/2025 - group to discuss how diag report dates should be reported
* effectiveDateTime MS
* result MS
* result only Reference(IdcoObservation)
// 11/15/2024 - need to fix observation reference
* note
* presentedForm MS

