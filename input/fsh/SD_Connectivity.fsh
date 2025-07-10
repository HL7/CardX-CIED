Extension: CIEDDeviceExtension
Id: cied-device-extension
Title: "CIED Device Extension"
Description: "Extension to represent cardiac implantable device(s) which generated the observation."
// * insert ExtensionContext(DomainResource)
// * insert ExtensionContext(Extension)
// * insert ExtensionContext(Observation)
// * ^extension[FMM].valueInteger = 2
* value[x] only Reference(CIEDDevice)
// * value[x] 1..*
// consider if this should include leads or if separate extension


Profile: CIEDConnectivityStatus
Parent: Observation
Id: cied-connectivity-status
Title: "Observation - CIED Connectivity"
Description: "
Profile of the observation resource to present the most recent connectivity status and associated information for a CIED/Monitor pair.

CIEDs and monitors connect at regular intervals to exchange data ranging from every few minutes to every other week depending on the device/monitor configuration and manufacturer. The connectivity observation profile is a snapshot in time and is not intended to be used to query historical log information that may have been captured by the remote monitoring IoT platform. A single observation will be returned for every CIED/monitor pair.
"
// to do - check element order for each example
* status MS
* code MS
* code = cied-connectivity#observation-cied-connectivity
// * status = http://hl7.org/fhir/ValueSet/observation-status#final
* device 1..1 MS 
* device only Reference(CIEDMonitor)
* extension contains CIEDDeviceExtension named ciedDevice 1..* MS
// * extension[ciedDevice] only Reference(CIEDDevice)
* extension[ciedDevice] ^short = "The cardiac implantable device(s) generating the observation."
* extension[ciedDevice] ^definition = "A reference to one or more CIEDs that produce the observation."
* effective[x] only dateTime
* effectiveDateTime 1..1 MS
* subject 1..1 MS 
* subject only Reference(CIEDPatient)
* note MS
* note ^short = "Text describing why the patient is listed at a given status and / or steps that can be taken to restore connectivity."
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
    connectivityModifier 0..* and
    statusReason 0..1 and
    statusGuidance 0..1 and
    lastCiedConnectivityDate 0..1 and
    lastMonitorConnectivityDate 0..1 and
    nextCiedConnectivityDate 0..1 and
    nextMonitorConnectivityDate 0..1 and
    lastRemoteInterrogationDate 0..1 and
    nextScheduledRemoteInterrogationDate 0..1 and
    nextSecondaryScheduledRemoteInterrogationDate 0..1 and
    connectionInterval 0..1 and
    expectedTimePeriod 0..1
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
* component[statusReason] MS
* component[statusReason] ^short = "Text describing reasons why the patient may be listed at a given status and / or modifier"
* component[statusReason].code MS
* component[statusReason].code ^short = "Text describing reasons why the patient may be listed at a given status and / or modifier"
* component[statusReason].code = cied-connectivity#status-reason
* component[statusReason].value[x] only string
* component[statusGuidance] MS
* component[statusGuidance] ^short = "Text describing steps to get the patient to a connected status"
* component[statusGuidance].code MS
* component[statusGuidance].code ^short = "Text describing steps to get the patient to a connected status"
* component[statusGuidance].code = cied-connectivity#status-guidance
* component[statusGuidance].value[x] only string
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
* component[nextCiedConnectivityDate] ^short = "The timestamp of the next expected communication between the CIED and monitor.."
* component[nextCiedConnectivityDate].code MS
* component[nextCiedConnectivityDate].code ^short = "Next CIED to monitor communication"
* component[nextCiedConnectivityDate].code = cied-connectivity#next-cied-connectivity-date
* component[nextCiedConnectivityDate].value[x] only dateTime
* component[nextMonitorConnectivityDate] MS
* component[nextMonitorConnectivityDate] ^short = "The timestamp of the next expected communication from the monitor to the remote monitoring platform."
* component[nextMonitorConnectivityDate].code MS
* component[nextMonitorConnectivityDate].code ^short = "Next monitor to Remote Monitoring Software communication"
* component[nextMonitorConnectivityDate].code = cied-connectivity#next-monitor-connectivity-date
* component[nextMonitorConnectivityDate].value[x] only dateTime
* component[lastRemoteInterrogationDate] MS
* component[lastRemoteInterrogationDate] ^short = "The date of the most recent remote device interrogation with a personal monitor"
* component[lastRemoteInterrogationDate].code MS
* component[lastRemoteInterrogationDate].code ^short = "The date of the most recent remote device interrogation with a personal monitor"
* component[lastRemoteInterrogationDate].code = cied-connectivity#last-interrogation-date
* component[lastRemoteInterrogationDate].value[x] only dateTime
* component[nextScheduledRemoteInterrogationDate] MS
* component[nextScheduledRemoteInterrogationDate] ^short = "The date of the next scheduled remote device interrogation"
* component[nextScheduledRemoteInterrogationDate].code MS
* component[nextScheduledRemoteInterrogationDate].code ^short = "The date of the next scheduled remote device interrogation. This is the sceduled data for the primary clinic if the patient is dual managed."
* component[nextScheduledRemoteInterrogationDate].code = cied-connectivity#next-interrogation-date
* component[nextScheduledRemoteInterrogationDate].value[x] only dateTime
* component[nextSecondaryScheduledRemoteInterrogationDate] MS
* component[nextSecondaryScheduledRemoteInterrogationDate] ^short = "The date of the next scheduled remote device interrogation by the seconary clinic"
* component[nextSecondaryScheduledRemoteInterrogationDate].code MS
* component[nextSecondaryScheduledRemoteInterrogationDate].code ^short = "The date of the next scheduled remote device interrogation by the seconary clinic for patients who are dual managed."
* component[nextSecondaryScheduledRemoteInterrogationDate].code = cied-connectivity#next-interrogation-date
* component[nextSecondaryScheduledRemoteInterrogationDate].value[x] only dateTime
* component[connectionInterval] MS
* component[connectionInterval] ^short = "The time interval in days between expected CIED and remote monitoring software communication"
* component[connectionInterval].code MS
* component[connectionInterval].code ^short = "The time interval in days between expected CIED and remote monitoring software communication"
* component[connectionInterval].code = cied-connectivity#connection-interval
* component[connectionInterval].value[x] only integer
* component[expectedTimePeriod] MS
* component[expectedTimePeriod] ^short = "The time period in which successful communication must take place for the connectivity status to remain connected."
* component[expectedTimePeriod].code MS
* component[expectedTimePeriod].code ^short = "The time period in which successful communication must take place for the connectivity status to remain connected."
* component[expectedTimePeriod].code = cied-connectivity#expected-time-period
* component[expectedTimePeriod].value[x] only integer

/*
Instance: uc1ConnectivityACME
InstanceOf: CIEDConnectivityStatus
Description: "An example CIED connectivity status for CIED connectivity example 1."
* code = cied-connectivity#observation-cied-connectivity
* device = Reference(uc1ACMEICD)
* effectiveDateTime = 2025-05-19T08:00:00.000Z
* subject = Reference(uc1ACMEPatient)
* status = http://hl7.org/fhir/ValueSet/observation-status#final
* code = cied-connectivity#observation-cied-connectivity
* category = cied-connectivity#observation-cied-connectivity  
* component[connectivityStatus].code = cied-connectivity#connectivity-status
* component[connectivityStatus].valueCodeableConcept = cied-connectivity#disconnected
* component[connectivityModifier].code = cied-connectivity#connectivity-modifier
* component[connectivityModifier].valueCodeableConcept = cied-connectivity#setup-not-completed

Instance: uc2ConnectivityACME
InstanceOf: CIEDConnectivityStatus
Description: "An example CIED connectivity status for CIED connectivity example 2."
* code = cied-connectivity#observation-cied-connectivity
* device = Reference(uc2ACMEPacemaker)
* effectiveDateTime = 2025-05-19T08:00:00.000Z
* subject = Reference(uc2ACMEPatient)
* status = http://hl7.org/fhir/ValueSet/observation-status#final
* note[0].text = "The patient has been disconnected for more than 90 days and is listed as inactive."
* code = cied-connectivity#observation-cied-connectivity
* category = cied-connectivity#observation-cied-connectivity  
* component[connectivityStatus].code = cied-connectivity#connectivity-status
* component[connectivityStatus].valueCodeableConcept = cied-connectivity#disconnected
* component[connectivityModifier].code = cied-connectivity#connectivity-modifier
* component[connectivityModifier].valueCodeableConcept = cied-connectivity#inactive
* component[lastCiedConnectivityDate].code = cied-connectivity#last-cied-connectivity-time
* component[lastCiedConnectivityDate].valueDateTime = 2025-02-19T06:00:00.000Z 
* component[lastMonitorConnectivityDate].code = cied-connectivity#last-monitor-connectivity-time
* component[lastMonitorConnectivityDate].valueDateTime = 2025-02-19T06:00:00.000Z
* component[nextCiedConnectivityDate].code = cied-connectivity#next-cied-connectivity-date
* component[nextCiedConnectivityDate].valueDateTime = 2025-05-20
* component[nextMonitorConnectivityDate].code = cied-connectivity#next-monitor-connectivity-date
* component[nextMonitorConnectivityDate].valueDateTime = 2025-05-20
* component[lastRemoteInterrogationDate].code = cied-connectivity#last-interrogation-date
* component[lastRemoteInterrogationDate].valueDateTime = 2025-02-08T06:00:00.000Z
* component[nextScheduledRemoteInterrogationDate].code = cied-connectivity#next-interrogation-date
* component[nextScheduledRemoteInterrogationDate].valueDateTime = 2025-05-30

Instance: uc3ConnectivityACME
InstanceOf: CIEDConnectivityStatus
Description: "An example CIED connectivity status for CIED connectivity example 3."
* code = cied-connectivity#observation-cied-connectivity
* device = Reference(uc3ACMEPacemaker)
* effectiveDateTime = 2025-05-19T08:00:00.000Z
* subject = Reference(uc3ACMEPatient)
* status = http://hl7.org/fhir/ValueSet/observation-status#final
* code = cied-connectivity#observation-cied-connectivity
* category = cied-connectivity#observation-cied-connectivity  
* component[connectivityStatus].code = cied-connectivity#connectivity-status
* component[connectivityStatus].valueCodeableConcept = cied-connectivity#connected
* component[lastCiedConnectivityDate].code = cied-connectivity#last-cied-connectivity-time
* component[lastCiedConnectivityDate].valueDateTime = 2025-05-18T06:00:00.000Z 
* component[lastMonitorConnectivityDate].code = cied-connectivity#last-monitor-connectivity-time
* component[lastMonitorConnectivityDate].valueDateTime = 2025-05-19T06:00:00.000Z
* component[nextCiedConnectivityDate].code = cied-connectivity#next-cied-connectivity-date
* component[nextCiedConnectivityDate].valueDateTime = 2025-05-20
* component[nextMonitorConnectivityDate].code = cied-connectivity#next-monitor-connectivity-date
* component[nextMonitorConnectivityDate].valueDateTime = 2025-05-20
* component[lastRemoteInterrogationDate].code = cied-connectivity#last-interrogation-date
* component[lastRemoteInterrogationDate].valueDateTime = 2025-02-28T06:00:00.000Z
* component[nextScheduledRemoteInterrogationDate].code = cied-connectivity#next-interrogation-date
* component[nextScheduledRemoteInterrogationDate].valueDateTime = 2025-05-30

Instance: uc4ConnectivityACME
InstanceOf: CIEDConnectivityStatus
Description: "An example CIED connectivity status for CIED connectivity example 4."
* code = cied-connectivity#observation-cied-connectivity
* device = Reference(uc4ACMEPacemaker)
* effectiveDateTime = 2025-05-19T08:00:00.000Z
* subject = Reference(uc4ACMEPatient)
* status = http://hl7.org/fhir/ValueSet/observation-status#final
* note[0].text = "The patient has been suspended from the disconnected list."
* code = cied-connectivity#observation-cied-connectivity
* category = cied-connectivity#observation-cied-connectivity  
* component[connectivityStatus].code = cied-connectivity#connectivity-status
* component[connectivityStatus].valueCodeableConcept = cied-connectivity#disconnected
* component[connectivityModifier].code = cied-connectivity#connectivity-modifier
* component[connectivityModifier].valueCodeableConcept = cied-connectivity#suspended
* component[lastCiedConnectivityDate].code = cied-connectivity#last-cied-connectivity-time
* component[lastCiedConnectivityDate].valueDateTime = 2025-04-25T06:00:00.000Z 
* component[lastMonitorConnectivityDate].code = cied-connectivity#last-monitor-connectivity-time
* component[lastMonitorConnectivityDate].valueDateTime = 2025-05-19T06:00:00.000Z
* component[nextCiedConnectivityDate].code = cied-connectivity#next-cied-connectivity-date
* component[nextCiedConnectivityDate].valueDateTime = 2025-05-20
* component[nextMonitorConnectivityDate].code = cied-connectivity#next-monitor-connectivity-date
* component[nextMonitorConnectivityDate].valueDateTime = 2025-05-20
* component[lastRemoteInterrogationDate].code = cied-connectivity#last-interrogation-date
* component[lastRemoteInterrogationDate].valueDateTime = 2025-02-28T06:00:00.000Z
* component[nextScheduledRemoteInterrogationDate].code = cied-connectivity#next-interrogation-date
* component[nextScheduledRemoteInterrogationDate].valueDateTime = 2025-05-30

Instance: uc5ConnectivityACME
InstanceOf: CIEDConnectivityStatus
Description: "An example CIED connectivity status for CIED connectivity example 5."
* code = cied-connectivity#observation-cied-connectivity
* device = Reference(uc5ACMEPacemaker)
* effectiveDateTime = 2025-05-19T08:00:00.000Z
* subject = Reference(uc5ACMEPatient)
* status = http://hl7.org/fhir/ValueSet/observation-status#final
* note[0].text = "The patient has not connected for at least 10 days."
* code = cied-connectivity#observation-cied-connectivity
* category = cied-connectivity#observation-cied-connectivity  
* component[connectivityStatus].code = cied-connectivity#connectivity-status
* component[connectivityStatus].valueCodeableConcept = cied-connectivity#disconnected
* component[lastCiedConnectivityDate].code = cied-connectivity#last-cied-connectivity-time
* component[lastCiedConnectivityDate].valueDateTime = 2025-05-04T06:00:00.000Z 
* component[lastMonitorConnectivityDate].code = cied-connectivity#last-monitor-connectivity-time
* component[lastMonitorConnectivityDate].valueDateTime = 2025-05-04T06:00:00.000Z
* component[nextCiedConnectivityDate].code = cied-connectivity#next-cied-connectivity-date
* component[nextCiedConnectivityDate].valueDateTime = 2025-05-20
* component[nextMonitorConnectivityDate].code = cied-connectivity#next-monitor-connectivity-date
* component[nextMonitorConnectivityDate].valueDateTime = 2025-05-20
* component[lastRemoteInterrogationDate].code = cied-connectivity#last-interrogation-date
* component[lastRemoteInterrogationDate].valueDateTime = 2025-03-30T06:00:00.000Z
* component[nextScheduledRemoteInterrogationDate].code = cied-connectivity#next-interrogation-date
* component[nextScheduledRemoteInterrogationDate].valueDateTime = 2025-06-25

*/