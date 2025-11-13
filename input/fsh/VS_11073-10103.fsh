// For STU 2 - add in all MDC_IDC codes
/*
ValueSet: MDCValueSet
Id: MDCValueSet
Title: "MDC Value Set"
Description: "ValueSet for the MDC CodeSystem."
* ^version = "1.0.0"
* ^experimental = false
* include codes from system Mdc where partition = "11"

ValueSet: IDCSessionTypeVS
Id: 11073-10103-SessionType
Title: "IEEE 11073-10103 Session Type"
Description: "The type of session as defined by IEEE 11073-10103"
* ^experimental = false
* IDC#754049 "Implant"
* IDC#754050 "In Clinic"
* IDC#754051 "Remote"
* IDC#754052 "Remote Device Initiated"
* IDC#754053 "Remote Scheduled"
* IDC#754054 "Remote Patient Initiated"
* IDC#754055 "Other"
* IDC#754056 "Unknown"
*/

ValueSet: MDCIDCDeviceTypes
Id: MDCIDCDeviceTypes
Title: "MDC IDC Device Types"
Description: "ValueSet for ISO/IEEE 11073-10103 Nomenclature Codes for MDC_IDC_ENUM_DEV_TYPE (Device Type)."
* ^experimental = false
* Mdc#753665 "MDC_IDC_ENUM_DEV_TYPE_IPG"
* Mdc#753666 "MDC_IDC_ENUM_DEV_TYPE_ICD"
* Mdc#753667 "MDC_IDC_ENUM_DEV_TYPE_CRT_D"
* Mdc#753668 "MDC_IDC_ENUM_DEV_TYPE_CRT_P"
* Mdc#753669 "MDC_IDC_ENUM_DEV_TYPE_Monitor"
* Mdc#753670 "MDC_IDC_ENUM_DEV_TYPE_Other"

