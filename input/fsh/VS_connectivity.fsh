// To Do: review use of valuesets vs codesystems as noted in warnings

ValueSet: cied-connectivity-state
Id: cied-connectivity-state-vs
Title: "CIED Connectivity Status Value Set"
Description: "The overall system connectivity status as calculated by the CIED manufacturer"
* cied-connectivity#not-applicable "Connectivity states are not applicable for this device. E.g. device is not compatible with remote monitoring or requires patient initiated interrogations"
* cied-connectivity#connected "Communication has been successful within the expected time period."
* cied-connectivity#disconnected "Communication has not occurred within the expected time period."

ValueSet: cied-connectivity-state-modifier
Id: cied-connectivity-state-modifier-vs
Title: "CIED Connectivity Status Modifier Value Set"
Description: "Additional modifiers to connectivity status as calculated by the CIED manufacturer"
* cied-connectivity#setup-not-completed "Device/monitor setup has not been completed. E.g. pending initial setup or there is no device/monitor association"
* cied-connectivity#suspended "Patient has been temporarily removed from the disconnected state. This is not intended to be an actionable status."
* cied-connectivity#inactive "Patient has been permanently removed from disconnected status."
* cied-connectivity#unenrolled "Patient has been unenrolled from remote monitoring or remote monitoring has been discontinued."

ValueSet: cied-connectivity-dates
Id: cied-connectivity-dates-vs
Title: "CIED Connectivity Dates and Timestamps"
Description: "The relevant dates and times related to CIED connectivity, scheduling, and transmission"
* cied-connectivity#last-cied-connectivity-time "The timestamp of the most recent communication between the CIED and monitor."   
* cied-connectivity#last-monitor-connectivity-time "The timestamp of the most recent communication from the monitor to the remote monitoring platform."   
* cied-connectivity#last-transmission-date "The date of the most recent interrogated device transmission"
* cied-connectivity#next-transmission-date "The date of the next scheduled interrogated device transmission"

CodeSystem: cied-connectivity
Title: "CIED Connectivity Status Values"
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
* #transmission-disabled "Disabled"
    "Indicates whether transmissions have been disabled on the CIED or not."
* #last-cied-connectivity-time "CIED to monitor"
    "The timestamp of the most recent communication between the CIED and monitor."   
* #last-monitor-connectivity-time "Monitor to Remote Monitoring Software"
    "The timestamp of the most recent communication from the monitor to the remote monitoring platform."   
* #last-transmission-date "Date the last transmission was sent"
    "The date of the most recent interrogated device transmission"
* #next-transmission-date "Date of the next scheduled transmission"
    "The date of the next scheduled interrogated device transmission"
* #observation-cied-connectivity "FHIR CIED Connectivity Status Profile"
* #bedside-device "Bedside Monitor"
    "Standalone device, not intended to provide monitoring while on the go"	
* #mobile-monitor "Mobile App"	
    "App based monitor"	
* #portable-device "Portable Device"	
    "Standalone device, with battery capacity to provide monitoring while on the go"



