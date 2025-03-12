Profile: CIEDDevice
Parent: Device
Id: cied-device
Title: "Cardiovascular Implantable Electronic Device Profile"
Description: "
The following data-elements must always be present (Mandatory definition) or must be supported if the data is present in the sending system (Must Support definition). They are presented below in a simple human-readable explanation. Profile specific guidance and examples are provided as well. The Formal Profile Definition below provides the formal summary, definitions, and terminology requirements.

MDC_IDC_DEV contains the following data elements:
MDC_IDC_DEV_TYPE
MDC_IDC_DEV_MODEL
MDC_IDC_DEV_SERIAL
MDC_IDC_DEV_MFG

Open Items:
MDC_IDC_DEV_TYPE - if using type, can include MDC_IDC enums in a valueset. Do we want to also allow SNOMED?

**Each Device must have:**
- a patient
- a manufacturer
- a UDI or device serial number
"
* udiCarrier MS
* manufacturer MS
* serialNumber MS
* modelNumber MS
* type MS
* gateway MS

// 09-jan-2025 - device association resource will be used to associated CIED and patient. In the future it will be used for device/lead associations. Assumption as of date is that a profile is not needed

Instance: uc1CiedDevice
InstanceOf: CIEDDevice  
Description: "An example CIED device for CIED connectivity example 1."
* udiCarrier[0].deviceIdentifier = "123456789"
* udiCarrier[0].issuer = "http://hl7.org/fhir/NamingSystem/gs1"
* udiCarrier[0].jurisdiction = "http://hl7.org/fhir/NamingSystem/fda-udi"
//* udiCarrier[0].carrierAIDC = "123456789"
* udiCarrier[0].carrierHRF = "123456"
//* udiCarrier[0].entryType = "barcode"
* manufacturer = "CIED Manufacturer"
* serialNumber = "123456789"
* modelNumber = "ICDExample1"
* type = IDCO#753666
// to do - add gateway
