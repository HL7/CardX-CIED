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

Instance: CardXCiedServerCapabilityStatement
InstanceOf: CapabilityStatement
Title: "CardX CIED Connectivity Server CapabilityStatement"
Usage: #definition
* rest.documentation =  "A CardX CIED Connectivity Server **SHALL**:\n\n1.  Implement the RESTful behavior according to the FHIR specification.\n1. Return the following response classes:\n   - (Status 400): invalid parameter\n   - (Status 401/4xx): unauthorized request\n   - (Status 403): insufficient scope\n   - (Status 404): unknown resource\n   - (Status 410): deleted resource.\n1. Support json and xml source formats for all CodeX RT interactions.\n1. Identify the CodeX RT  profiles supported as part of the FHIR `meta.profile` attribute for each instance.\n1. Support the searchParameters on each profile individually and in combination.\n"
* rest.security.description = "1. See the [General Security Considerations](https://www.hl7.org/fhir/security.html#general) section for requirements and recommendations.\n1. A server **SHALL** reject any unauthorized requests by returning an `HTTP 401` unauthorized response code."
* name = "CIECConnectivityServerCapabilityStatement"
* description = "CardX CIED Connectivity Server CapabilityStatement"
* rest.mode = #server
* status = #draft
* date = "2025-02-25"
* kind = #requirements
* fhirVersion = #5.0.0
* format[0] = #xml
* format[1] = #json

// Patient requirements
* insert SupportResource(Patient, #SHALL)
* insert SupportProfile(http://hl7.org/fhir/uv/cardx-cied-connectivity/StructureDefinition/CIEDPatient, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(identifier, http://hl7.org/fhir/SearchParameter/Patient-identifier, #token, #SHALL)
* insert SupportSearchParam(family, hhttp://hl7.org/fhir/SearchParameter/individual-family, #string, #SHOULD)
* insert SupportSearchParam(given, http://hl7.org/fhir/SearchParameter/individual-given, #string, #SHOULD)
* insert SupportSearchParam(birthdate, http://hl7.org/fhir/SearchParameter/individual-birthdate, #date, #SHOULD)
* insert SupportSearchParam(gender, http://hl7.org/fhir/SearchParameter/individual-gender, #token, #SHOULD)

// Device requirements
* insert SupportResource(Device, #SHALL)
* insert SupportProfile(http://hl7.org/fhir/uv/cardx-cied-connectivity/StructureDefinition/CIEDDevice, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(identifier, http://hl7.org/fhir/SearchParameter/Device-identifier, #token, #SHALL)

// Observation
* insert SupportResource(Observation, #SHALL)
* insert SupportProfile(http://hl7.org/fhir/uv/cardx-cied-connectivity/StructureDefinition/CIEDConnectivityStatus, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(identifier, http://hl7.org/fhir/SearchParameter/Observation-identifier, #token, #SHALL)
* insert SupportSearchParam(patient, http://hl7.org/fhir/SearchParameter/clinical-patient, #reference, #SHOULD)
* insert SupportSearchParam(subject, http://hl7.org/fhir/SearchParameter/Observation-subject, #reference, #SHOULD)
* insert SupportSearchParam(code, http://hl7.org/fhir/SearchParameter/clinical-code, #token, #SHALL)
* insert SupportSearchParam(combo-value-concept, http://hl7.org/fhir/SearchParameter/Observation-combo-value-concept, #token, #SHOULD)

// TO DO - go through and review token vs codeable concept etc.