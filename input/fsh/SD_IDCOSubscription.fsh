Alias: $CardXCIED = http://hl7.org/fhir/uv/cardx-cied/CodeSystem/CardXCIED

Instance: IDCOObservationSubscriptionTopic
InstanceOf: SubscriptionTopic
Title: "IDCO Observation Subscription Topic"
Description: "Subscription topic for Implantable Device Cardiac Observations (IDCO)"
Usage: #definition

* url = "http://hl7.org/fhir/uv/cardx-cied/SubscriptionTopic/IDCOObservationSubscriptionTopic"
* version = "1.0.0"
* status = #active
* eventTrigger
  * event = $CardXCIED#IDCO
  * resource = "http://hl7.org/fhir/uv/cardx-cied/StructureDefinition/idco-bundle"

