Profile: CIEDDeviceLead
Parent: Device
Id: cied-device-lead
Title: "Device - Cardiovascular Implantable Electronic Device (CIED) Lead"
Description: "
The CardX CIED Device Lead profile is interoperable with ISO/IEEE 11073-10103 - Implantable device, cardiac. The cardinality of the profile aligns with the
optionality of the ISO/IEEE 11073/10103 terms.

The following data-elements must always be present (Mandatory definition) or must be supported if the data is present in the sending system (Must Support definition). 
Within IEEE 11073-10103, MDC_IDC_DEV contains the following data elements:
MDC_IDC_LEAD_MODEL,
MDC_IDC_LEAD_SERIAL,
MDC_IDC_LEAD_MFG,
MDC_IDC_LEAD_ADVISORY_INFO_STATUS
"
* udiCarrier MS
* manufacturer 1..1 MS
* serialNumber 1..1 MS
* modelNumber 1..1 MS
