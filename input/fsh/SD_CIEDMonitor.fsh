Profile: CIEDMonitor
Parent: Device
Id: cied-monitor
Title: "Cardiovascular Implantable Electronic Device Monitor Profile"
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
* type from cied-monitor-types

Instance: uc1CIEDMonitor
InstanceOf: CIEDMonitor   
Description: "An example CIED monitor for CIED connectivity example 1."
* udiCarrier.deviceIdentifier = "12341234" 
* udiCarrier.issuer = "http://hl7.org/fhir/NamingSystem/gs1"
* udiCarrier.jurisdiction = "http://hl7.org/fhir/NamingSystem/fda-udi"
* udiCarrier.carrierHRF = "123456"
* manufacturer = "ACME Devices"
* serialNumber = "12341234"
* modelNumber = "Bedside Monitor 1"
* type = cied-connectivity#bedside-device

