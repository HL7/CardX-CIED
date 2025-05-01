### Introduction

High quality, effective and safe remote monitoring relies on patient connectivity.  The rapid management of disconnected patients is vital to ensure continuity of routine follow-up and to timely measure alerts that signal unexpected device behavior or important clinical events. The responsibility to maintain a connected status primarily lies with both the patient and the device clinic. It is essential that every reasonable effort is made by the clinic to contact disconnected patients and restore their connection to RM.
Cardiac implantable electronic device (CIED) manufacturers serve as collaborative partners, potentially offering assistance by notifying patients directly about disconnections and providing technical support to help restore the connection. This process is time-intensive. Establishing reconnection involves contacting the patient and troubleshooting any issues. This can be effectively carried out by adequately trained clinical or non-clinical staff; however, those staff need time allocated to that task and need readily available data to know who is disconnected, why they may be disconnected and to prioritize which patients need to be reconnected most urgently. 


Patient connectivity can be disrupted for a variety of reasons including:
* Bedside monitor unplugged
* Patient not being near the bedside monitor during scheduled transmission
* Smartphone app permissions
* Inadequate cellular signal or Wi-Fi connection
* Technical issues in the CIED or Monitor

The task of managing disconnected patients is further complicated by the varying connectivity and monitoring technologies in use. There is no universally accepted definition of 'connected' or 'disconnected' that applies to all patients. CIEDs may remain implanted for up to 15 years, and over the course of time, various device models may be available to patients for more than a decade. This results in technology—particularly telemetry—that must be supported for 25+ years under the current standards. Additionally, manufacturers have developed different definitions and workflows for managing disconnected patients, which now require harmonization. Clinicians also have individual preferences for connectivity, influenced by each patient's clinical characteristics and diagnosis.

### Approach

In the current state, there is no reliable method for device clinics, CIED data management systems, or CIED manufacturers to effective manage patients who are disconnected from remote monitoring. Through this use case, we plan to develop FHIR profiles to allow device clinics, CIED data management systems, and CIED manufacturers to calculate a devices connectivity status and provide supporting context on-the-fly using FHIR servers. This will also enable support for various software workflows and approaches by clinicians.
This use case focuses on optimizing workflows to reconnect patients to remote monitoring. The FHIR profiles are designed to provide the user with comprehensive context and information available from the manufacturer systems, enabling efficient management of patient connectivity 


This use case is centered around facilitating workflows to get patients connected to remote monitoring. The FHIR profiles are meant to provide the user with as much context and information as is available in the manufacturer systems. 
* The last time the monitor connected to the remote monitoring platform
* The last time the CIED connected to the monitor (if supported by device)
* The connectivity status as calculated by the manufacturer
* Additional context such as temporary removal from disconnected list (i.e. snoozed) or permanent removal due to a long period of inactivity
* Whether or not transmissions have been disabled on the device
* Most recent transmission
* Next scheduled transmission
* Free text containing any additional information the manufacturer might have about the patient, device, or guidance to reestablish connectivity 

### User Stories
Create a list of example, determine how comprehensive it should be. Not all examples will need sample data.
* Create table that shows relationship between codes and modifiers
* can consider small table for each example showing what the data elements should be
* Include blank modifiers in examples

#### Patient is Connected - Communication has been successful within the expected time period.
Adam, a patient implanted with an ICD, has a bedside monitor positioned on a night stand next to his bed. Every night while he sleeps, his ICD connects to his bedside monitor and transmits to his device manaufacturers remote monitoring platform. Adam displays as connected in the remote monitoring software and shows that his device and monitor connected the previous day. Adam will not appear on his clinics disconnected list.

#### Disconnected patient
* Would appear on Disconnect List
* Triaged by device clinician to restore connection or to move to appropriate connectivity modifier list

#### Patient with manual transmission
Sally, a patient implanted with a leadless pacemaker, has a device which is unable to send remote transmissions automatically. The manufacturer provided Sally with a reader head that she uses to manually transmit her pacemaker data to the manufacturers remote monitoring system at regular intervals. Because her device is requires manual transmissions, she will never appear on the disconnected list and her status will always display not applicable (N/A).

#### Inactive patient
* Would appear on Disconnected List 
* Triage by device clinician- to restore connection or moving patient to appropriate connectivity modifier list 
- Manual transmission connectivity modifier
- Inactive (Patient still has transmitter, but does not want to be continuously monitored or send intermittently. Clinic visits only.)
- Deactivate (patient death or patient declines RM)

#### Setup not completed
* Would appear on Disconnect List
* Triage by device clinician to reestablish connectivity

#### Suspended 
* Patients may inform their clinic that they are travelling or otherwise away from their monitor. Some remote monitoring platforms allow for clinincians to temporarily remove the patients from the disconnected list.
* Would not appear on Disconnected List. A status of diconnected with a suspended modifier indicates that this is expected behavior.

### Unenrolled - Verify if this is needed
* Patient has been unenrolled from remote monitoring or remote monitoring has been discontinued and should no longer appear on the disconnected list.

### Actors
#### Connectivity Data Producer
The data producer is a manufacturers CIED remote monitoring platform. The manufacturer typically manages an IoT platform to connect cardiac monitors with the remote monitoring platform and manufacturers CIED devices.

A secondary use case is a middleware vendor who consumes the data from a manufacturer and passes that information through to another software system such as an Electronic Health Record.

#### Connectivity Data Consumer
The data producer is a healthcare provider software system responsible for managing disconnected workflows. These software are often used because they are manufacturer agnostic and may be an Electronic Health Record or CIED specific middleware vendor.

### Workflow
{% include img.html img="connectivity-sequence.png" caption="CIED Connectivity Sequence Diagram" %} 

### Data Structure
{% include img.html img="data-model1.png" caption="CIED Connectivity Data Model" %} 