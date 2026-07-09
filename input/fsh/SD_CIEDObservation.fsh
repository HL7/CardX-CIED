Extension: ObservationInstance
Id:  instance-idco
Title: "Instance of repeatable element"
Description: "Extentension to support expanding number of reportable data beyond constrained number defined in nomenclature."
* insert ExtensionContext(Observation)
* value[x] only integer

Profile: IdcoObservation
Parent: Observation
Title: "Implantable Device Cardiac Observation"
Description: "Observation profile to support implantable cardiac device measurements, settings, statistics, episodes, notifications, and nomenclature"
* identifier 0..1
* status 1..1 MS
* status = DiagnosticReportStatus#final
* category 0..* MS
* code 1..1 MS
* code ^short = "Nomenclature version"
* effective[x] MS
* component MS
* component.code MS
* component.code from MDCidc (extensible)
* component.value[x] MS
* component.extension contains ObservationInstance named observationInstance 0..1 
* component.extension[observationInstance] ^short = "Instance number of the observation"
* component.extension[observationInstance] ^definition = "Extentension to support expanding number of reportable data beyond constrained number defined in nomenclature."
// DateTimes where hours/minutes are specified must use timezone offset e.g "effectiveDateTime" : "2013-04-02T09:30:10+01:00",
* component.interpretation from IDCOAbnormalFlags


/*
// example where instance extenstion is used
Instance: IDCOExample1
InstanceOf: IDCO-observation
Description: "Example IDCO"
Usage: #example
* status = http://hl7.org/fhir/observation-status#final
* code[+] = IDCO#754051
* component[+].code = IDCO#732288 "Zone Setting Number of Shocks"
* component[=].extension[observationInstance].valueInteger = 1
* component[=].valueInteger = 12
// * component[=].extension[observationInstance].valueInteger = 2
// * component[=].valueInteger = 3
*/

// TO DO: UCUM codes not displaying properly in web view
Instance: IDCOExample2
InstanceOf: IdcoObservation
Description: "Example IDCO"
Usage: #example
* status = http://hl7.org/fhir/observation-status#final
* code[+] = CardXCIED#IDCO "Implantable Device Cardiac Observation"
// MDC_IDC_MSMT_BATTERY
* component[+].code = $Mdc#721216 "MDC_IDC_MSMT_BATTERY_DTM"
* component[=].valueDateTime = "2019-10-16T12:12:29-09:00"
* component[=].extension[observationInstance].valueInteger = 1
* component[+].code = $Mdc#721280 "MDC_IDC_MSMT_BATTERY_STATUS"
* component[=].valueCodeableConcept = $Mdc#754113 "MDC_IDC_ENUM_BATTERY_STATUS_BOS"
* component[=].extension[observationInstance].valueInteger = 1
* component[+].code = $Mdc#721344 "MDC_IDC_MSMT_BATTERY_VOLTAGE"
* component[=].valueQuantity.value = 6.2
* component[=].valueQuantity = 'V' "V" 
* component[=].extension[observationInstance].valueInteger = 1
* component[+].code = $Mdc#721408 "MDC_IDC_MSMT_BATTERY_IMPEDANCE"
* component[=].valueQuantity.value = 2450
* component[=].valueQuantity = 'Ohm' "Ohm"
* component[=].extension[observationInstance].valueInteger = 1
* component[+].code = $Mdc#721472 "MDC_IDC_MSMT_BATTERY_REMAINING_LONGEVITY"
* component[=].valueQuantity.value = 38
* component[=].valueQuantity = 'mo' "mo"
* component[=].extension[observationInstance].valueInteger = 1
* component[+].code = $Mdc#721536 "MDC_IDC_MSMT_BATTERY_REMAINING_PERCENTAGE"
* component[=].valueQuantity.value = 75
* component[=].valueQuantity = '%' "%"
* component[=].extension[observationInstance].valueInteger = 1
* component[+].code = $Mdc#721600 "MDC_IDC_MSMT_BATTERY_RRT_TRIGGER"
* component[=].valueString = "Battery capacity < limit for 3 months"
* component[=].extension[observationInstance].valueInteger = 1
* component[+].code = $Mdc#721601 "MDC_IDC_MSMT_BATTERY_REMAINING_LONGEVITY_TIMEFRAME"
* component[=].valueCodeableConcept = $Mdc#754115 "MDC_IDC_ENUM_BATTERY_STATUS_RRT"
* component[=].extension[observationInstance].valueInteger = 1
* component[+].code = $Mdc#721602 "MDC_IDC_MSMT_BATTERY_REMAINING_PERCENTAGE_TIMEFRAME"
* component[=].valueCodeableConcept = $Mdc#754115 "MDC_IDC_ENUM_BATTERY_STATUS_RRT"
* component[=].extension[observationInstance].valueInteger = 1
* component[+].code = $Mdc#721603 "MDC_IDC_MSMT_BATTERY_RRT_REACHED_DTM"
* component[=].valueDateTime = "2025-03-21T12:12:29-09:00"
* component[=].extension[observationInstance].valueInteger = 1
// MDC_IDC_MSMT_CAP
* component[+].code = $Mdc#721664 "MDC_IDC_MSMT_CAP_CHARGE_DTM"
* component[=].valueDateTime = "2018-03-21T12:12:29-09:00"
* component[+].code = $Mdc#721728 "MDC_IDC_MSMT_CAP_CHARGE_TIME"
* component[=].valueQuantity.value = 9.4
* component[=].valueQuantity = 's' "s"
* component[+].code = $Mdc#721792 "MDC_IDC_MSMT_CAP_CHARGE_ENERGY"
* component[=].valueQuantity.value = 30
* component[=].valueQuantity = 'J' "J"
* component[+].code = $Mdc#721856 "MDC_IDC_MSMT_CAP_CHARGE_TYPE"
* component[=].valueCodeableConcept = $Mdc#754177 "MDC_IDC_ENUM_CHARGE_TYPE_Shock"
// MDC_IDC_MSMT_LEADCHNL_[CHAMBER]
// should MDC_IDC_MSMT_LEADCHNL_RA_DTM be included or just start/end?
* component[+].code = $Mdc#721921 "MDC_IDC_MSMT_LEADCHNL_RA_DTM_START"
* component[=].valueDateTime = "2019-03-21T12:12:29-09:00"
* component[+].code = $Mdc#721922 "MDC_IDC_MSMT_LEADCHNL_RA_DTM_END"
* component[=].valueDateTime = "2020-03-21T12:12:29-09:00"
* component[+].code = $Mdc#721984 "MDC_IDC_MSMT_LEADCHNL_RA_LEAD_CHANNEL_STATUS"
* component[=].valueCodeableConcept = $Mdc#754241 "MDC_IDC_ENUM_CHANNEL_STATUS_CheckLead"
* component[+].code = $Mdc#722049 "MDC_IDC_MSMT_LEADCHNL_RA_SENSING_INTR_AMPL_MAX"
* component[=].valueQuantity.value = 2.6
* component[=].valueQuantity = 'mV' "mV"
* component[+].code = $Mdc#722050 "MDC_IDC_MSMT_LEADCHNL_RA_SENSING_INTR_AMPL_MIN"
* component[=].valueQuantity.value = 2.2
* component[=].valueQuantity = 'mV' "mV"
* component[+].code = $Mdc#722051 "MDC_IDC_MSMT_LEADCHNL_RA_SENSING_INTR_AMPL_MEAN"
* component[=].valueQuantity.value = 2.5
* component[=].valueQuantity = 'mV' "mV"
* component[+].code = $Mdc#722112 "MDC_IDC_MSMT_LEADCHNL_RA_SENSING_POLARITY"
* component[=].valueCodeableConcept = $Mdc#754305 "MDC_IDC_ENUM_POLARITY_UNI"
* component[+].code = $Mdc#722176 "MDC_IDC_MSMT_LEADCHNL_RA_PACING_THRESHOLD_AMPLITUDE"
* component[=].valueQuantity.value = 0.7
* component[=].valueQuantity = 'V' "V" 
* component[+].code = $Mdc#722240 "MDC_IDC_MSMT_LEADCHNL_RA_PACING_THRESHOLD_PULSEWIDTH"
* component[=].valueQuantity.value = 0.5
* component[=].valueQuantity = 'ms' "ms"
* component[+].code = $Mdc#722304 "MDC_IDC_MSMT_LEADCHNL_RA_PACING_THRESHOLD_MEASUREMENT_METHOD"
* component[=].valueCodeableConcept = $Mdc#754371 "MDC_IDC_ENUM_MEASUREMENT_METHOD_DeviceAutomatic"
* component[+].code = $Mdc#722368 "MDC_IDC_MSMT_LEADCHNL_RA_PACING_THRESHOLD_POLARITY"
* component[=].valueCodeableConcept = $Mdc#754306 "MDC_IDC_ENUM_POLARITY_BI"
* component[+].code = $Mdc#722432 "MDC_IDC_MSMT_LEADCHNL_RA_IMPEDANCE_VALUE"
* component[=].valueQuantity.value = 530 
* component[=].valueQuantity = 'Ohm' "Ohm"
* component[+].code = $Mdc#722496 "MDC_IDC_MSMT_LEADCHNL_RA_IMPEDANCE_POLARITY"
* component[=].valueCodeableConcept = $Mdc#754306 "MDC_IDC_ENUM_POLARITY_BI"
// RV and LV leads to be added later
// several sections skipped...
* component[+].code = $Mdc#731520 
* component[=].valueCodeableConcept = $Mdc#754817 
* component[+].code = $Mdc#731648 
* component[=].valueCodeableConcept = $Mdc#754945 
* component[=].extension[observationInstance].valueInteger = 1
* component[+].code = $Mdc#731712 
* component[=].valueCodeableConcept = $Mdc#772161 
* component[=].extension[observationInstance].valueInteger = 1
* component[+].code = $Mdc#731776 
* component[=].valueCodeableConcept = $Mdc#755009 
* component[=].extension[observationInstance].valueInteger = 1
* component[+].code = $Mdc#731840 
* component[=].valueQuantity.value = 300 
* component[=].valueQuantity = 'ms' "ms"
* component[=].extension[observationInstance].valueInteger = 1
* component[+].code = $Mdc#732097 "MDC_IDC_SET_ZONE_TYPE_ATP_1"
* component[=].valueCodeableConcept = $Mdc#755073 "MDC_IDC_ENUM_ATP_TYPE_Burst"
* component[=].extension[observationInstance].valueInteger = 1
* component[+].code = $Mdc#732097 "MDC_IDC_SET_ZONE_TYPE_ATP_1"
* component[=].valueCodeableConcept = $Mdc#755073 "MDC_IDC_ENUM_ATP_TYPE_Burst"
* component[=].extension[observationInstance].valueInteger = 1
* component[+].code = $Mdc#732161 "MDC_IDC_SET_ZONE_NUM_ATP_SEQS_1"
* component[=].valueQuantity.value = 1 
* component[=].extension[observationInstance].valueInteger = 1
* component[+].code = $Mdc#732225 "MDC_IDC_SET_ZONE_SHOCK_ENERGY_1"
* component[=].valueQuantity.value = 0.6 
* component[=].valueQuantity = 'J' "J"
* component[=].extension[observationInstance].valueInteger = 1
* component[+].code = $Mdc#732289 "MDC_IDC_SET_ZONE_NUM_SHOCKS_1"
* component[=].valueQuantity.value = 1 
* component[=].extension[observationInstance].valueInteger = 1
* component[+].code = $Mdc#732226 "MDC_IDC_SET_ZONE_SHOCK_ENERGY_2"
* component[=].valueQuantity.value = 0.6 
* component[=].valueQuantity = 'J' "J"
* component[=].extension[observationInstance].valueInteger = 1
* component[+].code = $Mdc#732290 "MDC_IDC_SET_ZONE_NUM_SHOCKS_2"
* component[=].valueQuantity.value = 1 
* component[=].extension[observationInstance].valueInteger = 1
* component[+].code = $Mdc#732227 "MDC_IDC_SET_ZONE_SHOCK_ENERGY_3"
* component[=].valueQuantity.value = 41 
* component[=].valueQuantity = 'J' "J"
* component[=].extension[observationInstance].valueInteger = 1
* component[+].code = $Mdc#732291 "MDC_IDC_SET_ZONE_NUM_SHOCKS_3"
* component[=].valueQuantity.value = 1 
* component[=].extension[observationInstance].valueInteger = 1
* component[+].code = $Mdc#731648 
* component[=].valueCodeableConcept = $Mdc#754946 "MDC_IDC_ENUM_ZONE_TYPE_Zone_VT"
* component[=].extension[observationInstance].valueInteger = 2
* component[+].code = $Mdc#731712 
* component[=].valueCodeableConcept = $Mdc#772161 
* component[=].extension[observationInstance].valueInteger = 2
* component[+].code = $Mdc#731776 
* component[=].valueCodeableConcept = $Mdc#755011 
* component[=].extension[observationInstance].valueInteger = 2
* component[+].code = $Mdc#731840 
* component[=].valueQuantity.value = 375 
* component[=].valueQuantity = 'ms' "ms"
* component[=].extension[observationInstance].valueInteger = 2