Extension: CIEDDeviceExtension
Id: cied-device-extension
Title: "CIED Device Extension"
Description: "Extension to represent cardiac implantable device(s) which generated the observation."
* insert ExtensionContext(Observation)
* value[x] only Reference(CIEDDevice)

Profile: CIEDConnectivityStatus
Parent: Observation
Id: cied-connectivity-status
Title: "Observation - CIED Connectivity"
Description: "
Profile of the observation resource to present the most recent connectivity status and associated information for a CIED/Monitor combination.
In most instances there will be one observation per CIED/monitor pair per patient, however some manufacturers may allow multiple CIEDs implanted in a patient to connect to a single monitor and have a single connectivity status for the entire system of devices.

CIEDs and monitors connect at regular intervals to exchange data ranging from every few minutes to every other week depending on the device/monitor configuration and manufacturer. 
The connectivity observation profile is a snapshot in time and is not intended to be used to query historical log information that may have been captured by the remote monitoring IoT platform. 
A single observation will be returned for every CIED/monitor pair.

Connectivity status is based on the actual time difference between the most recent successful communication and the present date. 
To manage disconnected patients, manufacturers have implemented additional functionality in their platforms. The connectivity modifier is included to represent an action performed by the user or business logic applied by the manufacturer.
Examples of these are a user suspending a patient from appearing on the disconnected list in the remote monitoring system or the system automatically marking a patient as inactive after a prolonged disconnection period to remove them from
appearing on the disconnected list in the user interface.  
"
// to do - check element order for each example
* status MS
* code MS
* code = CardXCIED#observation-cied-connectivity
// * status = http://hl7.org/fhir/ValueSet/observation-status#final
* device MS 
* device only Reference(CIEDMonitor)
* extension contains CIEDDeviceExtension named ciedDevice 1..* MS
// * extension[ciedDevice] only Reference(CIEDDevice)
* extension[ciedDevice] ^short = "Cardiac implantable device(s)"
* extension[ciedDevice] ^definition = "A reference to one or more CIEDs that generate the observation."
* effective[x] only dateTime
* effectiveDateTime 1..1 MS
* subject 1..1 MS 
* subject only Reference(CIEDPatient)
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
* component[connectivityStatus] ^short = "The overall system connectivity status as calculated by the CIED manufacturer."
* component[connectivityStatus].code MS
* component[connectivityStatus].code = CardXCIED#connectivity-status
* component[connectivityStatus].value[x] only CodeableConcept
* component[connectivityStatus].value[x] from CIEDConnectivityStateVS
* component[connectivityModifier] MS
* component[connectivityModifier] ^short = "Additional modifiers to connectivity status as calculated by the CIED manufacturer."
* component[connectivityModifier].code MS
* component[connectivityModifier].code = CardXCIED#connectivity-modifier
* component[connectivityModifier].value[x] only CodeableConcept
* component[connectivityModifier].value[x] from CIEDConnectivityStateModifierVS
* component[statusReason] MS
* component[statusReason] ^short = "Text describing reasons why the patient may be listed at a given status and/or modifier."
* component[statusReason].code MS
* component[statusReason].code = CardXCIED#status-reason
* component[statusReason].value[x] only string
* component[statusGuidance] MS
* component[statusGuidance] ^short = "Text describing steps to get the patient to a connected status"
* component[statusGuidance].code MS
* component[statusGuidance].code = CardXCIED#status-guidance
* component[statusGuidance].value[x] only string
* component[lastCiedConnectivityDate] MS
* component[lastCiedConnectivityDate] ^short = "The timestamp of the most recent communication between the CIED and monitor."
* component[lastCiedConnectivityDate].code MS
* component[lastCiedConnectivityDate].code = CardXCIED#last-cied-connectivity-time
* component[lastCiedConnectivityDate].value[x] only dateTime
* component[lastMonitorConnectivityDate] MS
* component[lastMonitorConnectivityDate] ^short = "The timestamp of the most recent communication from the monitor to the remote monitoring platform." 
* component[lastMonitorConnectivityDate].code MS
* component[lastMonitorConnectivityDate].code = CardXCIED#last-monitor-connectivity-time
* component[lastMonitorConnectivityDate].value[x] only dateTime
* component[nextCiedConnectivityDate] MS
* component[nextCiedConnectivityDate] ^short = "The timestamp of the next expected communication between the CIED and monitor." 
* component[nextCiedConnectivityDate].code MS
* component[nextCiedConnectivityDate].code = CardXCIED#next-cied-connectivity-date
* component[nextCiedConnectivityDate].value[x] only dateTime
* component[nextMonitorConnectivityDate] MS
* component[nextMonitorConnectivityDate] ^short = "The timestamp of the next expected communication from the monitor to the remote monitoring platform." 
* component[nextMonitorConnectivityDate].code MS
* component[nextMonitorConnectivityDate].code = CardXCIED#next-monitor-connectivity-date
* component[nextMonitorConnectivityDate].value[x] only dateTime
* component[lastRemoteInterrogationDate] MS
* component[lastRemoteInterrogationDate] ^short = "The date of the most recent remote device interrogation with a personal monitor."
* component[lastRemoteInterrogationDate].code MS
* component[lastRemoteInterrogationDate].code = CardXCIED#last-interrogation-date
* component[lastRemoteInterrogationDate].value[x] only dateTime
* component[nextScheduledRemoteInterrogationDate] MS
* component[nextScheduledRemoteInterrogationDate] ^short = "The date of the next scheduled remote device interrogation."
* component[nextScheduledRemoteInterrogationDate].code MS
* component[nextScheduledRemoteInterrogationDate].code = CardXCIED#next-interrogation-date
* component[nextScheduledRemoteInterrogationDate].value[x] only dateTime
* component[nextSecondaryScheduledRemoteInterrogationDate] MS
* component[nextSecondaryScheduledRemoteInterrogationDate] ^short = "The date of the next scheduled remote device interrogation by the secondary clinic for patients who are dual-managed."
* component[nextSecondaryScheduledRemoteInterrogationDate].code MS
* component[nextSecondaryScheduledRemoteInterrogationDate].code = CardXCIED#next-secondary-interrogation-date
* component[nextSecondaryScheduledRemoteInterrogationDate].value[x] only dateTime
* component[connectionInterval] MS
* component[connectionInterval] ^short = "The time interval in days between expected CIED and remote monitoring software communication."
* component[connectionInterval].code MS
* component[connectionInterval].code = CardXCIED#connection-interval
* component[connectionInterval].value[x] only integer
* component[expectedTimePeriod] MS
* component[expectedTimePeriod] ^short = "The time period in days in which successful communication must take place for the connectivity status to remain connected."
* component[expectedTimePeriod].code MS
* component[expectedTimePeriod].code = CardXCIED#expected-time-period
* component[expectedTimePeriod].value[x] only integer


Instance: uc1ConnectivityACME
InstanceOf: CIEDConnectivityStatus
Description: "An example CIED connectivity status for CIED connectivity example 1."
* code = CardXCIED#observation-cied-connectivity
* extension[ciedDevice].valueReference = Reference(uc1ACMEICD)
* effectiveDateTime = 2025-05-19T08:00:00.000Z
* subject = Reference(uc1ACMEPatient)
* status = #final
* code = CardXCIED#observation-cied-connectivity
* category = CardXCIED#observation-cied-connectivity  
* component[connectivityStatus].code = CardXCIED#connectivity-status
* component[connectivityStatus].valueCodeableConcept = CardXCIED#disconnected
* component[connectivityModifier].code = CardXCIED#connectivity-modifier
* component[connectivityModifier].valueCodeableConcept = CardXCIED#setup-not-completed

Instance: uc2ConnectivityACME
InstanceOf: CIEDConnectivityStatus
Description: "An example CIED connectivity status for CIED connectivity example 2."
* code = CardXCIED#observation-cied-connectivity
* extension[ciedDevice].valueReference = Reference(uc2ACMEPacemaker)
* device = Reference(uc2CIEDMonitor)
* effectiveDateTime = 2025-05-19T08:00:00.000Z
* subject = Reference(uc2ACMEPatient)
* status = #final
* note[0].text = "The patient has been disconnected for more than 90 days and is listed as inactive."
* code = CardXCIED#observation-cied-connectivity
* category = CardXCIED#observation-cied-connectivity  
* component[connectivityStatus].code = CardXCIED#connectivity-status
* component[connectivityStatus].valueCodeableConcept = CardXCIED#disconnected
* component[connectivityModifier].code = CardXCIED#connectivity-modifier
* component[connectivityModifier].valueCodeableConcept = CardXCIED#inactive
* component[lastCiedConnectivityDate].code = CardXCIED#last-cied-connectivity-time
* component[lastCiedConnectivityDate].valueDateTime = 2025-02-19T06:00:00.000Z 
* component[lastMonitorConnectivityDate].code = CardXCIED#last-monitor-connectivity-time
* component[lastMonitorConnectivityDate].valueDateTime = 2025-02-19T06:00:00.000Z
* component[nextCiedConnectivityDate].code = CardXCIED#next-cied-connectivity-date
* component[nextCiedConnectivityDate].valueDateTime = 2025-05-20
* component[nextMonitorConnectivityDate].code = CardXCIED#next-monitor-connectivity-date
* component[nextMonitorConnectivityDate].valueDateTime = 2025-05-20
* component[lastRemoteInterrogationDate].code = CardXCIED#last-interrogation-date
* component[lastRemoteInterrogationDate].valueDateTime = 2025-02-08T06:00:00.000Z
* component[nextScheduledRemoteInterrogationDate].code = CardXCIED#next-interrogation-date
* component[nextScheduledRemoteInterrogationDate].valueDateTime = 2025-05-30
* component[connectionInterval].code = CardXCIED#connection-interval
* component[connectionInterval].valueInteger = 14
* component[expectedTimePeriod].code = CardXCIED#expected-time-period
* component[expectedTimePeriod].valueInteger = 14
* component[statusReason].code = CardXCIED#status-reason
* component[statusReason].valueString = "The patient has not connected for more than 90 days and is listed as inactive."
* component[statusGuidance].code = CardXCIED#status-guidance
* component[statusGuidance].valueString = "The patient should be contacted to determine if they are still using the device and if they wish to continue remote monitoring."

Instance: uc3ConnectivityACME
InstanceOf: CIEDConnectivityStatus
Description: "An example CIED connectivity status for CIED connectivity example 3."
* code = CardXCIED#observation-cied-connectivity
* extension[ciedDevice].valueReference = Reference(uc3ACMEPacemaker)
* device = Reference(uc3CIEDMonitor)
* effectiveDateTime = 2025-05-19T08:00:00.000Z
* subject = Reference(uc3ACMEPatient)
* status = #final
* code = CardXCIED#observation-cied-connectivity
* category = CardXCIED#observation-cied-connectivity  
* component[connectivityStatus].code = CardXCIED#connectivity-status
* component[connectivityStatus].valueCodeableConcept = CardXCIED#connected
* component[lastCiedConnectivityDate].code = CardXCIED#last-cied-connectivity-time
* component[lastCiedConnectivityDate].valueDateTime = 2025-05-18T06:00:00.000Z 
* component[lastMonitorConnectivityDate].code = CardXCIED#last-monitor-connectivity-time
* component[lastMonitorConnectivityDate].valueDateTime = 2025-05-19T06:00:00.000Z
* component[nextCiedConnectivityDate].code = CardXCIED#next-cied-connectivity-date
* component[nextCiedConnectivityDate].valueDateTime = 2025-05-20
* component[nextMonitorConnectivityDate].code = CardXCIED#next-monitor-connectivity-date
* component[nextMonitorConnectivityDate].valueDateTime = 2025-05-20
* component[lastRemoteInterrogationDate].code = CardXCIED#last-interrogation-date
* component[lastRemoteInterrogationDate].valueDateTime = 2025-02-28T06:00:00.000Z
* component[nextScheduledRemoteInterrogationDate].code = CardXCIED#next-interrogation-date
* component[nextScheduledRemoteInterrogationDate].valueDateTime = 2025-05-30

Instance: uc4ConnectivityACME
InstanceOf: CIEDConnectivityStatus
Description: "An example CIED connectivity status for CIED connectivity example 4."
* code = CardXCIED#observation-cied-connectivity
* extension[ciedDevice].valueReference = Reference(uc4ACMEPacemaker)
* device = Reference(uc4CIEDMonitor)
* effectiveDateTime = 2025-05-19T08:00:00.000Z
* subject = Reference(uc4ACMEPatient)
* status = #final
* note[0].text = "The patient has been suspended from the disconnected list."
* code = CardXCIED#observation-cied-connectivity
* category = CardXCIED#observation-cied-connectivity  
* component[connectivityStatus].code = CardXCIED#connectivity-status
* component[connectivityStatus].valueCodeableConcept = CardXCIED#disconnected
* component[connectivityModifier].code = CardXCIED#connectivity-modifier
* component[connectivityModifier].valueCodeableConcept = CardXCIED#suspended
* component[lastCiedConnectivityDate].code = CardXCIED#last-cied-connectivity-time
* component[lastCiedConnectivityDate].valueDateTime = 2025-04-25T06:00:00.000Z 
* component[lastMonitorConnectivityDate].code = CardXCIED#last-monitor-connectivity-time
* component[lastMonitorConnectivityDate].valueDateTime = 2025-05-19T06:00:00.000Z
* component[nextCiedConnectivityDate].code = CardXCIED#next-cied-connectivity-date
* component[nextCiedConnectivityDate].valueDateTime = 2025-05-20
* component[nextMonitorConnectivityDate].code = CardXCIED#next-monitor-connectivity-date
* component[nextMonitorConnectivityDate].valueDateTime = 2025-05-20
* component[lastRemoteInterrogationDate].code = CardXCIED#last-interrogation-date
* component[lastRemoteInterrogationDate].valueDateTime = 2025-02-28T06:00:00.000Z
* component[nextScheduledRemoteInterrogationDate].code = CardXCIED#next-interrogation-date
* component[nextScheduledRemoteInterrogationDate].valueDateTime = 2025-05-30

Instance: uc5ConnectivityACME
InstanceOf: CIEDConnectivityStatus
Description: "An example CIED connectivity status for CIED connectivity example 5."
* code = CardXCIED#observation-cied-connectivity
* extension[ciedDevice].valueReference = Reference(uc5ACMEPacemaker)
* device = Reference(uc5CIEDMonitor)
* effectiveDateTime = 2025-05-19T08:00:00.000Z
* subject = Reference(uc5ACMEPatient)
* status = #final
* note[0].text = "The patient has not connected for at least 10 days."
* code = CardXCIED#observation-cied-connectivity
* category = CardXCIED#observation-cied-connectivity  
* component[connectivityStatus].code = CardXCIED#connectivity-status
* component[connectivityStatus].valueCodeableConcept = CardXCIED#disconnected
* component[lastCiedConnectivityDate].code = CardXCIED#last-cied-connectivity-time
* component[lastCiedConnectivityDate].valueDateTime = 2025-05-04T06:00:00.000Z 
* component[lastMonitorConnectivityDate].code = CardXCIED#last-monitor-connectivity-time
* component[lastMonitorConnectivityDate].valueDateTime = 2025-05-04T06:00:00.000Z
* component[nextCiedConnectivityDate].code = CardXCIED#next-cied-connectivity-date
* component[nextCiedConnectivityDate].valueDateTime = 2025-05-20
* component[nextMonitorConnectivityDate].code = CardXCIED#next-monitor-connectivity-date
* component[nextMonitorConnectivityDate].valueDateTime = 2025-05-20
* component[lastRemoteInterrogationDate].code = CardXCIED#last-interrogation-date
* component[lastRemoteInterrogationDate].valueDateTime = 2025-03-30T06:00:00.000Z
* component[nextScheduledRemoteInterrogationDate].code = CardXCIED#next-interrogation-date
* component[nextScheduledRemoteInterrogationDate].valueDateTime = 2025-06-25
