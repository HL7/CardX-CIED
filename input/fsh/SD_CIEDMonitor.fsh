Profile: CIEDMonitor
Parent: Device
Id: cied-monitor
Title: "Device - CIED Monitor Profile"
Description: "
The CardX Device - CIED Monitor profile inherits characteristics from ISO/IEEE 11073-10103 - Implantable device, cardiac. 
The same CIED Device data elements that are included in ISO/IEEE 11073-10103, are must support for CIED Monitors in the FHIR profile. 
"
* udiCarrier MS
* manufacturer MS
* serialNumber MS
* modelNumber MS
* type MS
* type from CIEDMonitorTypesVS

/*
Instance: uc1CIEDMonitor
InstanceOf: CIEDMonitor   
Description: "An example CIED monitor for CIED connectivity example 1."
* udiCarrier.deviceIdentifier = "12341234" 
* udiCarrier.issuer = "http://hl7.org/fhir/NamingSystem/gs1"
* udiCarrier.jurisdiction = "http://hl7.org/fhir/NamingSystem/fda-udi"
* udiCarrier.carrierHRF = "123456"
* manufacturer = "ACME Devices"
* serialNumber = "uc1ACMEMonitor"
* modelNumber = "Bedside Monitor 1"
* type = CIEDconnectivity#bedside-device
*/

Instance: uc2CIEDMonitor
InstanceOf: CIEDMonitor   
Description: "An example CIED monitor for CIED connectivity example 2."
* udiCarrier.deviceIdentifier = "12341234" 
* udiCarrier.issuer = "http://hl7.org/fhir/NamingSystem/gs1-di"
* udiCarrier.jurisdiction = "http://hl7.org/fhir/NamingSystem/us-fda-udi"
* udiCarrier.carrierHRF = "123456"
* manufacturer = "ACME Devices"
* serialNumber = "uc2ACMEMonitor"
* modelNumber = "SmartApp Monitor 1"
* type = CIEDconnectivity#mobile-monitor

Instance: uc3CIEDMonitor
InstanceOf: CIEDMonitor   
Description: "An example CIED monitor for CIED connectivity example 3."
* udiCarrier.deviceIdentifier = "12341234" 
* udiCarrier.issuer = "http://hl7.org/fhir/NamingSystem/gs1-di"
* udiCarrier.jurisdiction = "http://hl7.org/fhir/NamingSystem/us-fda-udi"
* udiCarrier.carrierHRF = "123456"
* manufacturer = "ACME Devices"
* serialNumber = "uc3ACMEMonitor"
* modelNumber = "Bedside Monitor 3000"
* type = CIEDconnectivity#bedside-device

Instance: uc4CIEDMonitor
InstanceOf: CIEDMonitor   
Description: "An example CIED monitor for CIED connectivity example 4."
* udiCarrier.deviceIdentifier = "12341234" 
* udiCarrier.issuer = "http://hl7.org/fhir/NamingSystem/gs1-di"
* udiCarrier.jurisdiction = "http://hl7.org/fhir/NamingSystem/us-fda-udi"
* udiCarrier.carrierHRF = "123456"
* manufacturer = "ACME Devices"
* serialNumber = "uc4ACMEMonitor"
* modelNumber = "Bedside Monitor 5000"
* type = CIEDconnectivity#bedside-device

Instance: uc5CIEDMonitor
InstanceOf: CIEDMonitor   
Description: "An example CIED monitor for CIED connectivity example 5."
* udiCarrier.deviceIdentifier = "12341234" 
* udiCarrier.issuer = "http://hl7.org/fhir/NamingSystem/gs1-di"
* udiCarrier.jurisdiction = "http://hl7.org/fhir/NamingSystem/us-fda-udi"
* udiCarrier.carrierHRF = "123456"
* manufacturer = "ACME Devices"
* serialNumber = "uc5ACMEMonitor"
* modelNumber = "Magic Bedside Monitor"
* type = CIEDconnectivity#bedside-device
