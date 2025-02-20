Profile: CIEDConnectivityStatus
Parent: Observation
Title: "DRAFT - CIED Connectivity Status"
Description: "
Profile of the observation resource to present the most recent connectivity status and associated information for a communicating CIED.
"
* status MS
* code MS
* code = cied-connectivity#observation-cied-connectivity
* category = cied-connectivity#observation-cied-connectivity
// not mandating category, search optional
* device 1..1 MS 
* device only Reference(CIEDDevice)
* effective[x] only dateTime
* effectiveDateTime 1..1 MS
* subject MS 
* subject only Reference(CIEDPatient)
* note MS
* component MS
* component.code MS
* component.value[x] MS
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.ordered = false
* component ^slicing.rules = #open
* component ^short = "CIED Connectivity Components"
* component contains
    connectivityStatus 1..1 and
    connectivityModifier 0..1 and
    transmissionDisabled 0..1 and
    lastCiedConnectivityDate 0..1 and
    lastMonitorConnectivityDate 0..1 and
    lastTransmission 0..1 and
    nextTransmission 0..1
* component[connectivityStatus] MS
* component[connectivityStatus] ^short = "Connectivity status as determined by the manufacturer."
* component[connectivityStatus].code MS
* component[connectivityStatus].code from cied-connectivity-state-vs 
* component[connectivityModifier] MS
* component[connectivityModifier] ^short = "Additional information related to the connectivity status."
* component[connectivityModifier].code MS
* component[connectivityModifier].code from cied-connectivity-state-modifier-vs
* component[transmissionDisabled] MS
* component[transmissionDisabled] ^short = "Indicates whether transmissions have been disabled on the CIED or not."
* component[transmissionDisabled].code MS
* component[transmissionDisabled].code ^short = "Disabled"
* component[transmissionDisabled].code = cied-connectivity#transmission-disabled
* component[transmissionDisabled].value[x] only boolean
* component[lastCiedConnectivityDate] MS
* component[lastCiedConnectivityDate] ^short = "The timestamp of the most recent communication between the CIED and monitor."
* component[lastCiedConnectivityDate].code MS
* component[lastCiedConnectivityDate].code ^short = "CIED to monitor communication"
* component[lastCiedConnectivityDate].code = cied-connectivity#last-cied-connectivity-time
* component[lastCiedConnectivityDate].value[x] only dateTime
* component[lastMonitorConnectivityDate] MS
* component[lastMonitorConnectivityDate] ^short = "The timestamp of the most recent communication from the monitor to the remote monitoring platform."
* component[lastMonitorConnectivityDate].code MS
* component[lastMonitorConnectivityDate].code ^short = "Monitor to remote monitoring communication"
* component[lastMonitorConnectivityDate].code = cied-connectivity#last-monitor-connectivity-time
* component[lastMonitorConnectivityDate].value[x] only dateTime
* component[lastTransmission] MS
* component[lastTransmission] ^short = "The date of the most recent interrogated device transmission"
* component[lastTransmission].code MS
* component[lastTransmission].code ^short = "The date of the most recent interrogated device transmission"
* component[lastTransmission].code = cied-connectivity#last-transmission-date
* component[lastTransmission].value[x] only dateTime
* component[nextTransmission] MS
* component[nextTransmission] ^short = "The date of the next scheduled interrogated device transmission"
* component[nextTransmission].code MS
* component[nextTransmission].code ^short = "The date of the next scheduled interrogated device transmission"
* component[nextTransmission].code = cied-connectivity#next-transmission-date
* component[nextTransmission].value[x] only dateTime


// create example