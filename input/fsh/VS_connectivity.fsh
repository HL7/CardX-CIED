// To Do: review use of valuesets vs codesystems as noted in warnings

ValueSet: CIEDConnectivityStateVS
Id: cied-connectivity-state-vs
Title: "CIED Connectivity Status Value Set"
Description: "The overall system connectivity status as calculated by the CIED manufacturer"
* ^experimental = false
* CIEDconnectivity#not-applicable "Connectivity states are not applicable for this device. E.g. device is not compatible with remote monitoring or requires patient initiated interrogations"
* CIEDconnectivity#connected "Communication has been successful within the expected time period."
* CIEDconnectivity#disconnected "Communication has not occurred within the expected time period."

ValueSet: CIEDConnectivityStateModifierVS
Id: cied-connectivity-state-modifier-vs
Title: "CIED Connectivity Status Modifier Value Set"
Description: "Additional modifiers to connectivity status as calculated by the CIED manufacturer"
* ^experimental = false
* CIEDconnectivity#setup-not-completed "Device/monitor setup has not been completed. E.g. pending initial setup or there is no device/monitor association"
* CIEDconnectivity#suspended "Patient has been temporarily removed from the disconnected state. This is not intended to be an actionable status."
* CIEDconnectivity#inactive "Patient has been permanently removed from disconnected status."
* CIEDconnectivity#unenrolled "Patient has been unenrolled from remote monitoring or remote monitoring has been discontinued."
* CIEDconnectivity#transferred "The patient has been transfered to another remote monitoring clinic."

/*
ValueSet: cied-connectivity-dates
Id: cied-connectivity-dates-vs
Title: "CIED Connectivity Dates and Timestamps"
Description: "The relevant dates and times related to CIED connectivity, scheduling, and interrogation"
* ^experimental = false
* CIEDconnectivity#last-cied-connectivity-time "The timestamp of the most recent communication between the CIED and monitor."   
* CIEDconnectivity#last-monitor-connectivity-time "The timestamp of the most recent communication from the monitor to the remote monitoring platform."   
* CIEDconnectivity#next-cied-connectivity-date "The timestamp of the next expected communication between the CIED and monitor."   
* CIEDconnectivity#next-monitor-connectivity-date "The date of the next expected communication from the monitor to the remote monitoring platform."   
* CIEDconnectivity#last-interrogation-date "The date of the most recent remote device interrogation"
* CIEDconnectivity#next-interrogation-date "The date of the next scheduled remote device interrogation"
* CIEDconnectivity#next-secondary-interrogation-date "The date of the next scheduled remote device interrogation by the seconary clinic"

ValueSet: cied-connectivity-connection-interval
Id: cied-connectivity-connection-interval-vs
Title: "CIED Connectivity Connection Interval"
Description: "The time interval in days between CIED and remote monitoring software communication"
* ^experimental = false
* CIEDconnectivity#connection-interval "The time interval in days between expected CIED and remote monitoring software communication"
* CIEDconnectivity#expected-time-period "The time period in days in which successful communication must take place for the connectivity status to remain connected."
*/

ValueSet: CIEDMonitorTypesVS
Id: cied-monitor-types-vs
Title: "CIED Monitor Types"
Description: "The type of CIED monitor"
* ^experimental = false
* CIEDconnectivity#bedside-device "Standalone device, not intended to provide monitoring while on the go."  
* CIEDconnectivity#mobile-monitor "App based monitor."
* CIEDconnectivity#portable-device "Standalone device, with battery capacity to provide monitoring while on the go."
/*
ValueSet: cied-connectivity-status-annotations
Id: cied-connectivity-status-annotation-vs
Title: "CIED Connectivity Status Annotations"
Description: "Annotations related to CIED connectivity status."
* ^experimental = false
* CIEDconnectivity#status-reason "Text describing reasons why the patient may be listed at a given status and/or modifier."
* CIEDconnectivity#status-guidance "Text describing steps to get the patient to a connected status."
*/
CodeSystem: CIEDconnectivity
Title: "CIED Connectivity Status Values"
Description: "Codes system for CIED connectivity and monitor device types"
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
