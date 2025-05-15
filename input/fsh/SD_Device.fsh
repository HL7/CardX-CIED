Profile: CIEDDevice
Parent: Device
Id: cied-device
Title: "Device - Cardiovascular Implantable Electronic Device (CIED)"
Description: "
The following data-elements must always be present (Mandatory definition) or must be supported if the data is present in the sending system (Must Support definition). They are presented below in a simple human-readable explanation. Profile specific guidance and examples are provided as well. The Formal Profile Definition below provides the formal summary, definitions, and terminology requirements.

Within IEEE 11073-10103, MDC_IDC_DEV contains the following data elements:
MDC_IDC_DEV_TYPE
MDC_IDC_DEV_MODEL
MDC_IDC_DEV_SERIAL
MDC_IDC_DEV_MFG
"
* udiCarrier MS
* manufacturer MS
* serialNumber MS
* modelNumber MS
* type MS
* gateway MS

Mapping: device-to-ieee-11073-10103
Source: CIEDDevice
Target: "IEEE-11073-10103"
Id: device-to-ieee-11073-10103
Description: "Mapping of the CIEDDevice resource to the IEEE 11073-10103 standard."
* udiCarrier.deviceIdentifier -> "MDC_IDC_DEV_UNIQUE_ID"
* udiCarrier.issuer -> "MDC_IDC_DEV_UNIQUE_ID_ISSUER"
* manufacturer -> "_MDC_IDC_ENUM_MFG.EnumerationCode"
* serialNumber -> "MDC_IDC_DEV_SERIAL"
* modelNumber -> "MDC_IDC_DEV_MODEL"
* type -> "MDC_IDC_DEV_TYPE"

// 09-jan-2025 - device association resource will be used to associated CIED and patient. In the future it will be used for device/lead associations. Assumption as of date is that a profile is not needed

Instance: uc1CiedDevice
InstanceOf: CIEDDevice  
Description: "An example CIED device for CIED connectivity example 1."
* udiCarrier.deviceIdentifier = "123456789"
* udiCarrier.issuer = "http://hl7.org/fhir/NamingSystem/gs1"
* udiCarrier.jurisdiction = "http://hl7.org/fhir/NamingSystem/fda-udi"
* udiCarrier.carrierHRF = "123456"
* manufacturer = "ACME Devices"
* serialNumber = "123456789"
* modelNumber = "ICDExample1"
* type = IDC#753666
* gateway = Reference(uc1CIEDMonitor)
