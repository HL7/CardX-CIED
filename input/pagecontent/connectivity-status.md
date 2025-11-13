### Introduction

High quality, effective and safe remote monitoring relies on patient connectivity.  The rapid management of disconnected patients is vital to ensure continuity of routine follow-up and monitor alerts that signal unexpected device behavior or important clinical events. The responsibility to maintain a connected status primarily lies with both the patient and the device clinic. It is essential that every reasonable effort is made by the clinic to contact disconnected patients and restore their connection to remote monitoring.
Cardiac implantable electronic device (CIED) manufacturers serve as collaborative partners, potentially offering assistance by notifying patients directly about disconnections and providing technical support to help restore the connection. This process is time-intensive. Establishing reconnection involves contacting the patient and troubleshooting any issues. This can be effectively carried out by adequately trained clinical or non-clinical staff; however, those staff need time allocated to that task and need readily available data to know who is disconnected, why they may be disconnected and to prioritize which patients need to be reconnected most urgently. 

Patient connectivity can be disrupted for a variety of reasons including:
* Bedside monitor unplugged
* Patient not being near the bedside monitor during scheduled remote device interrogation
* Smartphone app permissions
* Inadequate cellular signal or Wi-Fi connection
* Technical issues in the CIED or Monitor

The task of managing disconnected patients is further complicated by the varying connectivity and monitoring technologies in use. There is no universally accepted definition of 'connected' or 'disconnected' that applies to all patients. CIEDs may remain implanted for up to 15 years, and over the course of time, various device models may be available to patients for more than a decade. This results in technology—particularly telemetry—that must be supported for 25+ years under the current standards. Additionally, manufacturers have developed different definitions and workflows for managing disconnected patients, which now require harmonization. Clinicians also have individual preferences for connectivity, influenced by each patient's clinical characteristics and diagnosis.

### Approach

In the current state, there is no reliable method for device clinics, CIED data management systems, or CIED manufacturers to effective manage patients who are disconnected from remote monitoring. Through this use case, we plan to develop FHIR profiles to allow device clinics, CIED data management systems, and CIED manufacturers to calculate a device's connectivity status and provide supporting context on-the-fly using FHIR servers. This will also enable support for various software workflows and approaches by clinicians.
This use case focuses on optimizing workflows to reconnect patients to remote monitoring. The FHIR profiles are designed to provide the user with comprehensive context and information available from the manufacturer systems, enabling efficient management of patient connectivity 

This use case is centered around facilitating workflows to get patients connected to remote monitoring. The FHIR profiles are meant to provide the user with as much context and information as is available in the manufacturer systems. 
* The last time the monitor connected to the remote monitoring platform
* The last time the CIED connected to the monitor (if supported by device)
* The connectivity status as calculated by the manufacturer
* Additional context such as temporary removal from disconnected list (i.e. snoozed) or permanent removal due to a long period of inactivity
* Most recent remote device interrogation
* Next scheduled remote device interrogation
* Free text containing any additional information the manufacturer might have about the patient, device, or guidance to reestablish connectivity 

### User Stories
The following user stories have associated Example Instances included in the Implementation Guide and are representative of a 19-May-2025 query of a manufacturer's FHIR server which supports the connectivity profiles.

#### Case 1 - Patient Receives a New Monitor That Has Not Been Setup
Jim Doe is a 67-year-old male with a dual chamber ICD. The device was implanted for primary prevention for sudden cardiac death. Jim received a bedside monitor in the mail from his device manufacturer, but he has not plugged the monitor in yet.

#### Case 2 - Patient is Inactive Due to Lack of Connectivity
John Doe is a 71-year-old male with an ICD placed for secondary prevention. His last transmission date was 08-Feb-2025, last CIED connectivity time was 19-Feb-2025, and last monitor connectivity (monitor = portable device) connection was 19-Feb-2025. His next scheduled remote interrogation is 30-May-2025.

#### Case 3 - Patient is Connected
Jane Doe is a 61-year-old female with a dual chamber pacemaker placed for sinus bradycardia. Her last transmission date was 28-Feb-2025, last CIED connectivity time was 18-May-2025, and last monitor connectivity (monitor = bedside device) was 19-May-2025 (connected as expected). Her next scheduled remote interrogation is 30-May-2025.

#### Case 4 - Patient Informs Clinic They Will be Away From Their Monitor
Jane Doe is a 61-year-old female with a dual chamber pacemaker placed for sinus bradycardia. Her last transmission date was 28-Feb-2025. The patient notified her device clinic that she is going on vacation without her bedside monitor. The last CIED connectivity time was 25-Apr-2025, last monitor connectivity (monitor = bedside device) was 19-May-2025 (connected as expected at home, patient did not bring along on vacation), and the next scheduled remote interrogation is 30-May-2025.

#### Case 5 - Patient is Disconnected
Jimmy Doe is a73-year-old male with a dual chamber pacemaker placed for complete heart block. His last transmission date was on 30-Mar-2025, last CIED connectivity time was 04-May-2025, and last monitor connectivity (monitor = bedside device) was 04-May-2025. His next scheduled remote interrogation is 25-Jun-2025. The manufacturer shows Jimmy as being disconnected if communication has not occurred in 10 days.

### Actors
#### Connectivity Data Producer
The data producer is a manufacturer's CIED remote monitoring platform. The manufacturer typically manages an IoT platform to connect cardiac monitors with the remote monitoring platform and manufacturer's CIED devices.

A secondary use case is a middleware vendor who consumes the data from a manufacturer and passes that information through to another software system such as an Electronic Health Record.

#### Connectivity Data Consumer
The data producer is a healthcare provider software system responsible for managing disconnected workflows. These software are often used because they are manufacturer agnostic and may be an Electronic Health Record or CIED specific middleware vendor.

### Workflow
{% include img.html img="connectivity-sequence.png" caption="CIED Connectivity Sequence Diagram" %} 

### Data Structure
{% include img.html img="data-model1.png" caption="CIED Connectivity Data Model" %} 