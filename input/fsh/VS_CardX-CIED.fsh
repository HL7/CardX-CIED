ValueSet: CIEDConnectivityStateVS
Id: cied-connectivity-state-vs
Title: "CIED Connectivity Status Value Set"
Description: "The overall system connectivity status as calculated by the CIED manufacturer"
* ^experimental = false
* CardXCIED#not-applicable "Connectivity states are not applicable for this device. E.g. device is not compatible with remote monitoring or requires patient initiated interrogations"
* CardXCIED#connected "Communication has been successful within the expected time period."
* CardXCIED#disconnected "Communication has not occurred within the expected time period."

ValueSet: CIEDConnectivityStateModifierVS
Id: cied-connectivity-state-modifier-vs
Title: "CIED Connectivity Status Modifier Value Set"
Description: "Additional modifiers to connectivity status as calculated by the CIED manufacturer"
* ^experimental = false
* CardXCIED#setup-not-completed "Device/monitor setup has not been completed. E.g. pending initial setup or there is no device/monitor association"
* CardXCIED#suspended "Patient has been temporarily removed from the disconnected state. This is not intended to be an actionable status."
* CardXCIED#inactive "Patient has been permanently removed from disconnected status."
* CardXCIED#unenrolled "Patient has been unenrolled from remote monitoring or remote monitoring has been discontinued."
* CardXCIED#transferred "The patient has been transfered to another remote monitoring clinic."

ValueSet: CIEDMonitorTypesVS
Id: cied-monitor-types-vs
Title: "CIED Monitor Types"
Description: "The type of CIED monitor"
* ^experimental = false
* CardXCIED#bedside-device "Standalone device, not intended to provide monitoring while on the go."  
* CardXCIED#mobile-monitor "App based monitor."
* CardXCIED#portable-device "Standalone device, with battery capacity to provide monitoring while on the go."

ValueSet: CIEDPatientIdentifier
Id: cied-patient-identifier
Title: "CIED Patient Identifier"
Description: "Identifiers which can be used to identify CIED patients."
* ^experimental = false
* include codes from system http://terminology.hl7.org/CodeSystem/v2-0203
* CardXCIED#idco-pid "Identifier used in IDCO PID HL7 Segment"

CodeSystem: CardXCIED
Title: "CardX CIED FHIR IG Code System"
Description: "Codes system for CardX CIED FHIR Implementation Guide Codes."
* ^caseSensitive = true
* ^experimental = false
* ^status = #active
* #connectivity-status "Connectivity status"
    "The overall system connectivity status as calculated by the CIED manufacturer."
* #connectivity-modifier "Connectivity modifier"
    "Additional modifiers to connectivity status as calculated by the CIED manufacturer."
* #setup-not-completed "Setup not completed"
    "Device/monitor setup has not been completed. E.g. pending initial setup or there is no device/monitor association."
* #not-applicable "N/A"
    "Connectivity states are not applicable for this device. E.g. device is not compatible with remote monitoring or requires patient initiated interrogations."
* #connected "Connected"
    "Communication has been successful within the expected time period."
* #disconnected "Disconnected"
    "Communication has not occurred within the expected time period."
* #suspended "Suspended"
    "Patient has been temporarily removed from the disconnected state. This is not intended to be an actionable status."
* #inactive "Inactive"
    "Patient has been permanently removed from the disconnected status."
* #unenrolled "Unenrolled"
    "Patient has been unenrolled from remote monitoring or remote monitoring has been discontinued."
* #transferred "Transferred"
    "The patient has been transferred to another remote monitoring clinic."
* #last-cied-connectivity-time "Last CIED to monitor communication"
    "The timestamp of the most recent communication between the CIED and monitor."   
* #last-monitor-connectivity-time "Last monitor to remote monitoring software communication"
    "The timestamp of the most recent communication from the monitor to the remote monitoring platform."   
* #next-cied-connectivity-date "Next CIED to monitor communication"
    "The timestamp of the next expected communication between the CIED and monitor."   
* #next-monitor-connectivity-date "Next monitor to remote monitoring software communication"
    "The timestamp of the next expected communication from the monitor to the remote monitoring platform."   
* #last-interrogation-date "Last remote device interrogation date"
    "The date of the most recent remote device interrogation with a personal monitor."
* #next-interrogation-date "Next scheduled remote device interrogation date"
    "The date of the next scheduled remote device interrogation."
* #next-secondary-interrogation-date "Next scheduled remote device interrogation date, secondary clinic"
    "The date of the next scheduled remote device interrogation by the secondary clinic for patients who are dual-managed."
* #observation-cied-connectivity "CIED connectivity"
    "FHIR observation constrained to the CardX CIED connectivity profile."
* #bedside-device "Bedside Monitor"
    "Standalone device, not intended to provide monitoring while on the go." 
* #mobile-monitor "Mobile App"  
    "App based monitor." 
* #portable-device "Portable Device"    
    "Standalone device, with battery capacity to provide monitoring while on the go."
* #connection-interval "Connection interval"
    "The time interval in days between expected CIED and remote monitoring software communication."
* #expected-time-period "Expected time period"
    "The time period in days in which successful communication must take place for the connectivity status to remain connected."
* #status-reason "Status reason"
    "Text describing reasons why the patient may be listed at a given status and/or modifier."
* #status-guidance "Status guidance"
    "Text describing steps to get the patient to a connected status."
* #idco-pid "Identifier used in IDCO PID HL7 Segment"
    "IDCO specifies a combination of model and serial number as model:model-number/serial:serial-number"