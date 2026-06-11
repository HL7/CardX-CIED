### Introduction
The Implantable Device Cardiac Observation (IDCO) use case focuses on representing the content of a remote or in-clinic device interrogation as computable FHIR data. The historical IDCO profile defined workflow, terminology, and message structure using IEEE 11073-10103 nomenclature and HL7 v2 messaging. This implementation guide translates that same clinical content into FHIR profiles so that device observations can be exchanged, queried, and reused across manufacturer platforms, middleware, and provider systems.

The goal is not only to render a report, but to make the discrete findings within that report computable. Measurements, programmed settings, episode summaries, therapy details, notifications, and derived interpretations can then support downstream workflows such as inbox review, longitudinal trending, decision support, registry submission, and incorporation into the medical record.

### Approach
This guide organizes a device transmission as a collection Bundle that groups the patient, device context, diagnostic report, and one or more IDCO observations. The DiagnosticReport carries the report-level metadata and references the observation resources that contain the detailed device content. The observation profile is intentionally flexible: it uses IEEE 11073-10103 terminology in the observation code and component codes so the same structure can represent a wide range of device measurements and settings without creating a separate profile for every device-specific data element.

The approach preserves the semantic fidelity of the source interrogation while fitting modern FHIR-based exchange patterns. Systems can retrieve the complete Bundle for a report-oriented workflow or process the referenced Observation resources as structured data.

### User Stories
The following user stories illustrate the type of workflow supported by this content.

#### Case 1 

### Actors
#### Device Observation Data Producer
The primary producer is a CIED manufacturer remote monitoring platform or programmer ecosystem that receives raw telemetry, performs vendor-specific processing, and publishes the normalized result as FHIR resources. In some implementations, an intermediary integration or middleware platform may also act as the producer after transforming manufacturer content into the profiles defined by this guide.

#### Device Observation Data Consumer
The consumer is typically a provider-facing software system such as an electronic health record, device clinic management application, or manufacturer-agnostic middleware platform. These systems need both a human-readable report and structured device data that can drive filtering, trend analysis, follow-up workflows, and clinical documentation.

### Workflow
The workflow begins when a remote transmission or in-clinic interrogation is completed and processed by the source system. The source system assembles the patient and device context, creates a DiagnosticReport for the interrogation event, and represents the detailed interrogation content as one or more IDCO Observation resources. Those resources are packaged in an IDCO Bundle and made available to downstream systems.

The receiving system can consume the Bundle as a complete package, persist the referenced resources, and present the data according to the local workflow. Report-centric workflows may focus on the DiagnosticReport and attachments, while data-centric workflows may extract individual coded observation components for trending, reconciliation, or decision support.

### Data Structure
{% include img.html img="data-modelIDCO.png" caption="Cardiac Device Observations Data Model" %} 

The IDCO Bundle is the transport container for a single processed interrogation payload. It includes one DiagnosticReport, one patient, zero or more devices and lead resources, optional organization and practitioner context, and one or more IDCO Observation resources. The DiagnosticReport provides the clinical summary and points to the detailed observations through its `result` references.

Within each IDCO Observation, the top-level observation code identifies the overall nomenclature context and the `component` backbone elements carry the individual IEEE 11073-10103 coded data points. This pattern allows a single observation resource to represent a large set of clinically related device data while preserving the original coded meaning of each measurement or setting.

### Mappings
11073-10103 Reference ID | FHIR Resource | FHIR Data Element
