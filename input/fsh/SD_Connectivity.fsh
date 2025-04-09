Profile: CIEDConnectivityStatus
Parent: Observation
Id: cied-connectivity-status
Title: "CIED Connectivity Observation Profile"
Description: "
Profile of the observation resource to present the most recent connectivity status and associated information for a communicating CIED.
"
* status MS
* code MS
* code = cied-connectivity#observation-cied-connectivity
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
    // TO DO - review modifier. Evaluate 0..*. i.e. inactive, setup not complete
    connectivityModifier 0..* and
    transmissionDisabled 0..1 and
    lastCiedConnectivityDate 0..1 and
    lastMonitorConnectivityDate 0..1 and
    nextCiedConnectivityDate 0..1 and
    nextMonitorConnectivityDate 0..1 and
    lastTransmission 0..1 and
    nextTransmission 0..1
* component[connectivityStatus] MS
* component[connectivityStatus] ^short = "The overall system connectivity status as calculated by the CIED manufacturer"
* component[connectivityStatus].code MS
* component[connectivityStatus].code = cied-connectivity#connectivity-status
* component[connectivityStatus].value[x] only CodeableConcept
* component[connectivityStatus].value[x] from cied-connectivity-state-vs 
* component[connectivityModifier] MS
* component[connectivityModifier] ^short = "Additional modifiers to connectivity status as calculated by the CIED manufacturer"
* component[connectivityModifier].code MS
* component[connectivityModifier].code = cied-connectivity#connectivity-modifier
* component[connectivityModifier].value[x] only CodeableConcept
* component[connectivityModifier].value[x] from cied-connectivity-state-modifier-vs
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
* component[nextCiedConnectivityDate] MS
* component[nextCiedConnectivityDate] ^short = "The timestamp of the next expected communication between the CIED and monitor."
* component[nextCiedConnectivityDate].code MS
* component[nextCiedConnectivityDate].code ^short = "Next CIED to monitor communication"
* component[nextCiedConnectivityDate].code = cied-connectivity#next-cied-connectivity-date
* component[nextCiedConnectivityDate].value[x] only dateTime
* component[nextMonitorConnectivityDate] MS
* component[nextMonitorConnectivityDate] ^short = "The timestamp of the next expected communication from the monitor to the remote monitoring platform."
* component[nextMonitorConnectivityDate].code MS
* component[nextMonitorConnectivityDate].code ^short = "Next monitor to remote monitoring communication"
* component[nextMonitorConnectivityDate].code = cied-connectivity#next-monitor-connectivity-date
* component[nextMonitorConnectivityDate].value[x] only dateTime
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

Instance: uc1Connectivity1
InstanceOf: CIEDConnectivityStatus
Description: "Use case 1, connectivity status 1"
* code = cied-connectivity#observation-cied-connectivity
* device = Reference(uc1CiedDevice)
* effectiveDateTime = 2025-02-15T06:15:00.000Z
* subject = Reference(uc1Patient)
* status = http://hl7.org/fhir/ValueSet/observation-status#final
* note[0].text = "The patient is listed as inactive in the system after being disconnected for more than 90 days."
* code = cied-connectivity#observation-cied-connectivity
* category = cied-connectivity#observation-cied-connectivity  
* component[connectivityStatus].code = cied-connectivity#connectivity-status
* component[connectivityStatus].valueCodeableConcept = cied-connectivity#disconnected
* component[connectivityModifier].code = cied-connectivity#connectivity-modifier
* component[connectivityModifier].valueCodeableConcept = cied-connectivity#inactive
* component[transmissionDisabled].valueBoolean = false
* component[lastCiedConnectivityDate].code = cied-connectivity#last-cied-connectivity-time
* component[lastCiedConnectivityDate].valueDateTime = 2024-02-15T06:00:00.000Z 
* component[lastMonitorConnectivityDate].code = cied-connectivity#last-monitor-connectivity-time
* component[lastMonitorConnectivityDate].valueDateTime = 2024-02-15T06:00:00.000Z
* component[nextCiedConnectivityDate].code = cied-connectivity#next-cied-connectivity-date
* component[nextCiedConnectivityDate].valueDateTime = 2025-02-21
* component[nextMonitorConnectivityDate].code = cied-connectivity#next-monitor-connectivity-date
* component[nextMonitorConnectivityDate].valueDateTime = 2025-02-21
* component[lastTransmission].code = cied-connectivity#last-transmission-date
* component[lastTransmission].valueDateTime = 2024-02-15T06:00:00.000Z
* component[nextTransmission].code = cied-connectivity#next-transmission-date
* component[nextTransmission].valueDateTime = 2025-02-21




