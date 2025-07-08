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
* manufacturer 1..1 MS
* serialNumber 1..1 MS
* modelNumber 1..1 MS
* type 1..1 MS
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

Instance: uc1ACMEICD
InstanceOf: CIEDDevice  
Description: "An example CIED device for CIED connectivity example 1."
* udiCarrier.deviceIdentifier = "123456789"
* udiCarrier.issuer = "http://hl7.org/fhir/NamingSystem/gs1"
* udiCarrier.jurisdiction = "http://hl7.org/fhir/NamingSystem/fda-udi"
* udiCarrier.carrierHRF = "123456"
* manufacturer = "ACME Devices"
* serialNumber = "uc1ACMEICD"
* modelNumber = "ICDExample1"
* type = IDC#753666

Instance: uc2ACMEPacemaker
InstanceOf: CIEDDevice  
Description: "An example CIED device for CIED connectivity example 2."
* udiCarrier.deviceIdentifier = "123456789"
* udiCarrier.issuer = "http://hl7.org/fhir/NamingSystem/gs1"
* udiCarrier.jurisdiction = "http://hl7.org/fhir/NamingSystem/fda-udi"
* udiCarrier.carrierHRF = "123456"
* manufacturer = "ACME Devices"
* serialNumber = "uc2ACMEPacemaker"
* modelNumber = "PacemakerExample2"
* type = IDC#753666
* gateway = Reference(uc2CIEDMonitor)

Instance: uc3ACMEPacemaker
InstanceOf: CIEDDevice  
Description: "An example CIED device for CIED connectivity example 3."
* udiCarrier.deviceIdentifier = "123456789"
* udiCarrier.issuer = "http://hl7.org/fhir/NamingSystem/gs1"
* udiCarrier.jurisdiction = "http://hl7.org/fhir/NamingSystem/fda-udi"
* udiCarrier.carrierHRF = "123456"
* manufacturer = "ACME Devices"
* serialNumber = "uc3ACMEPacemaker"
* modelNumber = "PacemakerExample3"
* type = IDC#753665
* gateway = Reference(uc3CIEDMonitor)

Instance: uc4ACMEPacemaker
InstanceOf: CIEDDevice  
Description: "An example CIED device for CIED connectivity example 4."
* udiCarrier.deviceIdentifier = "123456789"
* udiCarrier.issuer = "http://hl7.org/fhir/NamingSystem/gs1"
* udiCarrier.jurisdiction = "http://hl7.org/fhir/NamingSystem/fda-udi"
* udiCarrier.carrierHRF = "123456"
* manufacturer = "ACME Devices"
* serialNumber = "uc4ACMEPacemaker"
* modelNumber = "PacemakerExample4"
* type = IDC#753665
* gateway = Reference(uc4CIEDMonitor)

Instance: uc5ACMEPacemaker
InstanceOf: CIEDDevice  
Description: "An example CIED device for CIED connectivity example 5."
* udiCarrier.deviceIdentifier = "123456789"
* udiCarrier.issuer = "http://hl7.org/fhir/NamingSystem/gs1"
* udiCarrier.jurisdiction = "http://hl7.org/fhir/NamingSystem/fda-udi"
* udiCarrier.carrierHRF = "123456"
* manufacturer = "ACME Devices"
* serialNumber = "uc5ACMEPacemaker"
* modelNumber = "PacemakerExample5"
* type = IDC#753665
* gateway = Reference(uc5CIEDMonitor)
