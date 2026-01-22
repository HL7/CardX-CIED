Profile: CIEDDiagnosticReport
Parent: DiagnosticReport
Id: cied-diagnostic-report
Title: "CIED Diagnostic Report Profile"
Description: "
To Do
"
* identifier
* status MS
* code MS
* subject MS
// * subject only Reference(CIEDPatient)
// 11/15/2024 - need to fix patient reference
// 1/8/2025 - group to discuss how diag report dates should be reported
* effectiveDateTime MS
* result MS
//* result Reference(IdcoObservation)
// 11/15/2024 - need to fix observation reference
* note
* presentedForm MS

