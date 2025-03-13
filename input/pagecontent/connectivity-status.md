### Introduction
**To Do:** Introduction is poorly written and needs to be reviewed and edited

Patient connectivity to remote monitoring is critical for the success of a remote monitoring program and most importantly for the patient to realize the known benefits of RM. Rapid management of disconnected patients is imperative. This responsibility falls on the patient and the device clinic. It is important that every reasonable effort be made by the clinic to reach the disconnected patient. Manufacturers as collaborative partners can assist by providing a notification directly to the patient about a disconnection and can provide technical support if needed. This time-intensive process that includes contacting the patient and troubleshooting the issue(s) can be accomplished by adequately trained nonclinical or clinical staff with adequate time budgeted for this important task.

Patient connectivity can be disrupted for a variety of reasons including.
* Bedside monitor unplugged
* Patient not being near the bedside monitor during scheduled transmission
* Smartphone app permissions
* Technical issues in the CIED or Monitor

The task of managing disconnected patients is further exacerbated by disparate connectivity and monitoring technology used. There is no single definition of 'connected' and 'disconncted' that can be applied to all patients. CIEDs can be implanted in a patient for up to 15 years and various models might be available for patients for over a decade resulting in 25+ years of technology, notably telemetry, that must be supported by this standard. Manufacturers have also implemented various definitions and workflows to manage disconnected patients that required harmonization. Clinicians may also have different preferences for connectivity depending on an individual patients clinical characteristics.

### Approach
The above complexity results in alert based communication when a patient is disconnected to not be feasible. Instead, manufacturers FHIR servers shall calculate a devices connectivity status and provide supporting contenxt on-the-fly. This will also enable support for various software workflows and approaches by clinicians.

This use case is centered around facilitating workflows to get patients connected to remote monitoring. The FHIR profiles are meant to provide the user with as much context and information as is available in the manufacturer systems. 
* The last time the monitor connected to the remote monitoring platform
* The last time the CIED connected to the monitor (if supported by device)
* The connectivity status as calculated by the manufacturer
* Additional context such as temporary removal from disconnected list (i.e. snoozed) or permanent removal due to a long period of inactivity
* Whether or not transmissions have been disabled on the device
* Most recent transmission
* Next scheduled transmission
* Free text containing any additional information the manufacturer might have about the patient, device, or guidance to reestablish connectivity

### Examples
**To Do:** Create a list of example, determine how comprehensive it should be. Not all examples will need sample data.
#### Connected patient

#### Patient with manual transmission

#### Inactive patient

#### Disconnected patient...

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