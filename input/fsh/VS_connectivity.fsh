// To Do: review use of valuesets vs codesystems as noted in warnings

ValueSet: cied-connectivity-state
Id: cied-connectivity-state-vs
Title: "CIED Connectivity Status Value Set"
Description: "The overall system connectivity status as calculated by the CIED manufacturer"
* ^experimental = false
* cied-connectivity#not-applicable "Connectivity states are not applicable for this device. E.g. device is not compatible with remote monitoring or requires patient initiated interrogations"
* cied-connectivity#connected "Communication has been successful within the expected time period."
* cied-connectivity#disconnected "Communication has not occurred within the expected time period."

ValueSet: cied-connectivity-state-modifier
Id: cied-connectivity-state-modifier-vs
Title: "CIED Connectivity Status Modifier Value Set"
Description: "Additional modifiers to connectivity status as calculated by the CIED manufacturer"
* ^experimental = false
* cied-connectivity#setup-not-completed "Device/monitor setup has not been completed. E.g. pending initial setup or there is no device/monitor association"
* cied-connectivity#suspended "Patient has been temporarily removed from the disconnected state. This is not intended to be an actionable status."
* cied-connectivity#inactive "Patient has been permanently removed from disconnected status."
* cied-connectivity#unenrolled "Patient has been unenrolled from remote monitoring or remote monitoring has been discontinued."
* cied-connectivity#transferred "The patient has been transfered to another remote monitoring clinic."

ValueSet: cied-connectivity-dates
Id: cied-connectivity-dates-vs
Title: "CIED Connectivity Dates and Timestamps"
Description: "The relevant dates and times related to CIED connectivity, scheduling, and interrogation"
* ^experimental = false
* cied-connectivity#last-cied-connectivity-time "The timestamp of the most recent communication between the CIED and monitor."   
* cied-connectivity#last-monitor-connectivity-time "The timestamp of the most recent communication from the monitor to the remote monitoring platform."   
* cied-connectivity#next-cied-connectivity-date "The date of the next expected communication between the CIED and monitor."   
* cied-connectivity#next-monitor-connectivity-date "The date of the next expected communication from the monitor to the remote monitoring platform."   
* cied-connectivity#last-interrogation-date "The date of the most recent remote device interrogation"
* cied-connectivity#next-interrogation-date "The date of the next scheduled remote device interrogation"

ValueSet: cied-connectivity-connection-interval
Id: cied-connectivity-connection-interval-vs
Title: "CIED Connectivity Connection Interval"
Description: "The time interval in days between CIED and remote monitoring software communication"
* ^experimental = false
* cied-connectivity#connection-interval "The time interval in days between expected CIED and remote monitoring software communication"

ValueSet: cied-monitor-types
Id: cied-monitor-types-vs
Title: "CIED Monitor Types"
Description: "The type of CIED monitor"
* ^experimental = false
* cied-connectivity#bedside-device "Standalone device, not intended to provide monitoring while on the go"  
* cied-connectivity#mobile-monitor "App based monitor"
* cied-connectivity#portable-device "Standalone device, with battery capacity to provide monitoring while on the go"

CodeSystem: cied-connectivity
Title: "CIED Connectivity Status Values"
Description: "Codes system for CIED connectivity and monitor device types"
* ^caseSensitive = true
* ^experimental = false
* ^status = #active
* #connectivity-status "The overall system connectivity status as calculated by the CIED manufacturer"
* #connectivity-modifier "Additional modifiers to connectivity status as calculated by the CIED manufacturer"
* #setup-not-completed "Setup not completed"
    "Device/monitor setup has not been completed. E.g. pending initial setup or there is no device/monitor association"
* #not-applicable "N/A"
    "Connectivity states are not applicable for this device. E.g. device is not compatible with remote monitoring or requires patient initiated interrogations"
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
    "The patient has been transfered to another remote monitoring clinic."
* #last-cied-connectivity-time "Last CIED to monitor"
    "The timestamp of the most recent communication between the CIED and monitor."   
* #last-monitor-connectivity-time "Last Monitor to Remote Monitoring Software"
    "The timestamp of the most recent communication from the monitor to the remote monitoring platform."   
* #next-cied-connectivity-date "Next CIED to monitor"
    "The date of the next expected communication between the CIED and monitor."   
* #next-monitor-connectivity-date "Next monitor to Remote Monitoring Software"
    "The date of the next expected communication from the monitor to the remote monitoring platform."   
* #last-interrogation-date "Date the last remote device interrogation"
    "The date of the most recent remote device interrogation with a personal montior"
* #next-interrogation-date "Date of the next scheduled remote device interrogation"
    "The date of the next scheduled remote device interrogation"
* #observation-cied-connectivity "FHIR CIED Connectivity Status Profile"
* #bedside-device "Bedside Monitor"
    "Standalone device, not intended to provide monitoring while on the go"	
* #mobile-monitor "Mobile App"	
    "App based monitor"	
* #portable-device "Portable Device"	
    "Standalone device, with battery capacity to provide monitoring while on the go"
* #connection-interval "Connection Interval"
    "The time interval in days between expected CIED and remote monitoring software communication."


