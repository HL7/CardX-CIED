Alias: $exp = http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation
Alias: $spexp = http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination

RuleSet: SupportResource (resource, expectation)
* rest.resource[+].type = #{resource}
* rest.resource[=].extension[0].url = $exp
* rest.resource[=].extension[0].valueCode = {expectation}

RuleSet: SupportProfile (profile, expectation)
// This rule set must follow a SupportResource rule set, and applies to that resource.
* rest.resource[=].supportedProfile[+] = "{profile}"
* rest.resource[=].supportedProfile[=].extension[0].url = $exp
* rest.resource[=].supportedProfile[=].extension[0].valueCode = {expectation}

RuleSet: SupportInteraction (interaction, expectation)
// This rule set must follow a SupportResource rule set, and applies to that resource.
* rest.resource[=].interaction[+].code = {interaction}
* rest.resource[=].interaction[=].extension[0].url = $exp
* rest.resource[=].interaction[=].extension[0].valueCode = {expectation}

RuleSet: SupportSearchParam (name, canonical, type, expectation)
// This rule set must follow a SupportResource rule set, and applies to that resource.
* rest.resource[=].searchParam[+].name = "{name}"
* rest.resource[=].searchParam[=].definition = "{canonical}"
* rest.resource[=].searchParam[=].type = {type}
* rest.resource[=].searchParam[=].extension[0].url = $exp
* rest.resource[=].searchParam[=].extension[0].valueCode = {expectation}

RuleSet: SearchParameterCombinations
* insert SupportSearchParam(identifier, http://hl7.org/fhir/SearchParameter/clinical-identifier, #token, #SHALL)
* insert SupportSearchParam(subject, http://hl7.org/fhir/SearchParameter/Procedure-subject, #reference, #SHOULD)
* insert SupportSearchParam(category, http://hl7.org/fhir/SearchParameter/Procedure-category, #token, #SHOULD)
* insert SupportSearchParam(code, http://hl7.org/fhir/SearchParameter/clinical-code, #token, #SHOULD)

Instance: cied-data-sender
InstanceOf: CapabilityStatement
Usage: #definition
Title: "CardX CIED Connectivity Server Capability Statement"
Description: """
This capability statement describes the requirements for systems that make CIED Connectivity data available.
"""
* rest.documentation =  "A CardX CIED Connectivity Server **SHALL**:\n\n1.  Implement the RESTful behavior according to the FHIR specification.\n1. Return the following response classes:\n   - (Status 400): invalid parameter\n   - (Status 401/4xx): unauthorized request\n   - (Status 403): insufficient scope\n   - (Status 404): unknown resource\n   - (Status 410): deleted resource.\n"
* rest.security.description = "1. See the [General Security Considerations](https://www.hl7.org/fhir/security.html#general) section for requirements and recommendations.\n1. A server **SHALL** reject any unauthorized requests by returning an `HTTP 401` unauthorized response code."
* name = "CIEDConnectivityServerCapabilityStatement"
* description = "CardX CIED Connectivity Server CapabilityStatement"
* rest.mode = #server
* status = #active
* date = "2025-02-25"
* kind = #requirements
* fhirVersion = #5.0.0
* format[0] = #xml
* format[1] = #json

// Patient requirements
* insert SupportResource(Patient, #SHALL)
* insert SupportProfile(https://build.fhir.org/ig/HL7/CardX-CIED/StructureDefinition-cied-patient.html, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(identifier, http://hl7.org/fhir/SearchParameter/Patient-identifier, #token, #SHALL)

// Device requirements
* insert SupportResource(Device, #SHALL)
* insert SupportProfile(https://build.fhir.org/ig/HL7/CardX-CIED/StructureDefinition-cied-device.html, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(manufacturer, http://hl7.org/fhir/SearchParameter/Device-manufacturer, #string, #SHOULD)
* insert SupportSearchParam(model, http://hl7.org/fhir/SearchParameter/Device-model, #string, #SHOULD)
* insert SupportSearchParam(udi-di, http://hl7.org/fhir/SearchParameter/Device-udi-di, #string, #SHOULD)
* insert SupportSearchParam(type, http://hl7.org/fhir/SearchParameter/Device-type, #token, #SHOULD)
* insert SupportSearchParam(serial-number, http://hl7.org/fhir/SearchParameter/Device-serial-number, #string, #SHOULD)

// Observation
* insert SupportResource(Observation, #SHALL)
* insert SupportProfile(https://build.fhir.org/ig/HL7/CardX-CIED/StructureDefinition-cied-connectivity-status.html, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(patient, http://hl7.org/fhir/SearchParameter/clinical-patient, #reference, #SHOULD)
* insert SupportSearchParam(subject, http://hl7.org/fhir/SearchParameter/Observation-subject, #reference, #SHOULD)
* insert SupportSearchParam(code, http://hl7.org/fhir/SearchParameter/clinical-code, #token, #SHALL)
* insert SupportSearchParam(combo-value-concept, http://hl7.org/fhir/SearchParameter/Observation-combo-value-concept, #token, #SHOULD)
* insert SupportSearchParam(date, http://hl7.org/fhir/SearchParameter/clinical-date, #date, #SHOULD)

// TO DO - go through and review token vs codeable concept etc.
