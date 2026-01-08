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

// example without instance extension (classic)
// TO DO: UCUM codes not displaying properly in web view
Instance: IDCOExample2
InstanceOf: IDCO-observation
Description: "Example IDCO"
Usage: #example
* status = http://hl7.org/fhir/observation-status#final
* code[+] = IDCO#MDC_IDC "Implantable Device Cardiac Observation - TEMPORARY CODE."
// MDC_IDC_MSMT_BATTERY
* component[+].code = IDCO#721216 "Battery Date Time of Measurements"
* component[=].valueDateTime = "2019-10-16T12:12:29-09:00"
* component[=].extension[observationInstance].valueInteger = 1
* component[+].code = IDCO#721280 "Battery Status"
* component[=].valueCodeableConcept = IDCO#754113 "Beginning of Service"
* component[=].extension[observationInstance].valueInteger = 1
* component[+].code = IDCO#721344 "Battery Voltage"
* component[=].valueQuantity.value = 6.2
* component[=].valueQuantity = 'V' "V" 
* component[=].extension[observationInstance].valueInteger = 1
* component[+].code = IDCO#721408 "Battery Impedance"
* component[=].valueQuantity.value = 2450
* component[=].valueQuantity = 'Ohm' "Ohm"
* component[=].extension[observationInstance].valueInteger = 1
* component[+].code = IDCO#721472 "Battery Remaining Longevity"
* component[=].valueQuantity.value = 38
* component[=].valueQuantity = 'mo' "mo"
* component[=].extension[observationInstance].valueInteger = 1
* component[+].code = IDCO#721536 "Battery Remaining Percentage"
* component[=].valueQuantity.value = 75
* component[=].valueQuantity = '%' "%"
* component[=].extension[observationInstance].valueInteger = 1
* component[+].code = IDCO#721600 "Battery RRT Trigger"
* component[=].valueString = "Battery capacity < limit for 3 months"
* component[=].extension[observationInstance].valueInteger = 1
* component[+].code = IDCO#721601 "Battery Remaining Longevity Timeframe"
* component[=].valueCodeableConcept = IDCO#754115 "RRT"
* component[=].extension[observationInstance].valueInteger = 1
* component[+].code = IDCO#721602 "Battery Remaining Percentage Timeframe"
* component[=].valueCodeableConcept = IDCO#754115 "RRT"
* component[=].extension[observationInstance].valueInteger = 1
* component[+].code = IDCO#721603 "Battery RRT Reached Date Time"
* component[=].valueDateTime = "2025-03-21T12:12:29-09:00"
* component[=].extension[observationInstance].valueInteger = 1
// MDC_IDC_MSMT_CAP
* component[+].code = IDCO#721664 "Capacitor Last Charge Date Time"
* component[=].valueDateTime = "2018-03-21T12:12:29-09:00"
* component[+].code = IDCO#721728 "Capacitor Charge Time"
* component[=].valueQuantity.value = 9.4
* component[=].valueQuantity = 's' "s"
* component[+].code = IDCO#721792 "Capacitor Charge Energy"
* component[=].valueQuantity.value = 30
* component[=].valueQuantity = 'J' "J"
* component[+].code = IDCO#721856 "Capacitor Charge Type"
* component[=].valueCodeableConcept = IDCO#754177 "Shock"
// MDC_IDC_MSMT_LEADCHNL_[CHAMBER]
// should MDC_IDC_MSMT_LEADCHNL_RA_DTM be included or just start/end?
* component[+].code = IDCO#721921 "Lead Channel Measurements Date and Time MDC_IDC_MSMT_LEADCHNL_RA_DTM_START"
* component[=].valueDateTime = "2019-03-21T12:12:29-09:00"
* component[+].code = IDCO#721922 "Lead Channel Measurements Date and Time MDC_IDC_MSMT_LEADCHNL_RA_DTM_END"
* component[=].valueDateTime = "2020-03-21T12:12:29-09:00"
* component[+].code = IDCO#721984 "Lead Channel Status MDC_IDC_MSMT_LEADCHNL_RA_LEAD_CHANNEL_STATUS"
* component[=].valueCodeableConcept = IDCO#754241 "Check Lead"
* component[+].code = IDCO#722049 "Lead Channel Sensing Intrinsic Amplitude MDC_IDC_MSMT_LEADCHNL_RA_SENSING_INTR_AMPL_MAX"
* component[=].valueQuantity.value = 2.6
* component[=].valueQuantity = 'mV' "mV"
* component[+].code = IDCO#722050 "Lead Channel Sensing Intrinsic Amplitude MDC_IDC_MSMT_LEADCHNL_RA_SENSING_INTR_AMPL_MIN"
* component[=].valueQuantity.value = 2.2
* component[=].valueQuantity = 'mV' "mV"
* component[+].code = IDCO#722051 "Lead Channel Sensing Intrinsic Amplitude MDC_IDC_MSMT_LEADCHNL_RA_SENSING_INTR_AMPL_MEAN"
* component[=].valueQuantity.value = 2.5
* component[=].valueQuantity = 'mV' "mV"
* component[+].code = IDCO#722112 "Lead Channel Sensing Polarity MDC_IDC_MSMT_LEADCHNL_RA_SENSING_POLARITY"
* component[=].valueCodeableConcept = IDCO#754305 "Unipolar"
* component[+].code = IDCO#722176 "Lead Channel Pacing Threshold Amplitude MDC_IDC_MSMT_LEADCHNL_RA_PACING_THRESHOLD_AMPLITUDE"
* component[=].valueQuantity.value = 0.7
* component[=].valueQuantity = 'V' "V" 
* component[+].code = IDCO#722240 "Lead Channel Pacing Threshold Pulse Width MDC_IDC_MSMT_LEADCHNL_RA_PACING_THRESHOLD_PULSEWIDTH"
* component[=].valueQuantity.value = 0.5
* component[=].valueQuantity = 'ms' "ms"
* component[+].code = IDCO#722304 "Lead Channel Pacing Threshold Measurement Method MDC_IDC_MSMT_LEADCHNL_RA_PACING_THRESHOLD_MEASUREMENT_METHOD"
* component[=].valueCodeableConcept = IDCO#754371 "Device Automatic"
* component[+].code = IDCO#722368 "Lead Channel Pacing Threshold Polarity MDC_IDC_MSMT_LEADCHNL_RA_PACING_THRESHOLD_POLARITY"
* component[=].valueCodeableConcept = IDCO#754306 "Bipolar"
* component[+].code = IDCO#722432 "Lead Channel Impedance Value MDC_IDC_MSMT_LEADCHNL_RA_IMPEDANCE_VALUE"
* component[=].valueQuantity.value = 530 
* component[=].valueQuantity = 'Ohm' "Ohm"
* component[+].code = IDCO#722496 "Lead Channel Impedance Polarity MDC_IDC_MSMT_LEADCHNL_RA_IMPEDANCE_POLARITY"
* component[=].valueCodeableConcept = IDCO#754306 "Bipolar"
// RV and LV leads to be added later
// several sections skipped...
* component[+].code = IDCO#731520 "Tachy Therapy Setting Ventricular Status"
* component[=].valueCodeableConcept = IDCO#754817 "On"
* component[+].code = IDCO#731648 "Zone Setting Type Category"
* component[=].valueCodeableConcept = IDCO#754945 "VF"
* component[=].extension[observationInstance].valueInteger = 1
* component[+].code = IDCO#731712 "Zone Setting Vendor Type Category"
* component[=].valueCodeableConcept = IDCO#772161 "A Medtronic zone subclassification of ventricular fibrillation."
* component[=].extension[observationInstance].valueInteger = 1
* component[+].code = IDCO#731776 "Zone Setting Status"
* component[=].valueCodeableConcept = IDCO#755009 "Active"
* component[=].extension[observationInstance].valueInteger = 1
* component[+].code = IDCO#731840 "Zone Setting Detection Interval"
* component[=].valueQuantity.value = 300 
* component[=].valueQuantity = 'ms' "ms"
* component[=].extension[observationInstance].valueInteger = 1
* component[+].code = IDCO#732097 "Zone Setting ATP Type MDC_IDC_SET_ZONE_TYPE_ATP_1"
* component[=].valueCodeableConcept = IDCO#755073 "Burst"
* component[=].extension[observationInstance].valueInteger = 1
* component[+].code = IDCO#732097 "Zone Setting ATP Type MDC_IDC_SET_ZONE_TYPE_ATP_1"
* component[=].valueCodeableConcept = IDCO#755073 "Burst"
* component[=].extension[observationInstance].valueInteger = 1
* component[+].code = IDCO#732161 "Zone Setting Number of ATP Sequences MDC_IDC_SET_ZONE_NUM_ATP_SEQS_1"
* component[=].valueQuantity.value = 1 
* component[=].extension[observationInstance].valueInteger = 1
* component[+].code = IDCO#732225 "The shock energy delivered at a particular sequence of a zone therapy. MDC_IDC_SET_ZONE_SHOCK_ENERGY_1"
* component[=].valueQuantity.value = 0.6 
* component[=].valueQuantity = 'J' "J"
* component[=].extension[observationInstance].valueInteger = 1
* component[+].code = IDCO#732289 "Zone Setting Number of Shocks MDC_IDC_SET_ZONE_NUM_SHOCKS_1"
* component[=].valueQuantity.value = 1 
* component[=].extension[observationInstance].valueInteger = 1
* component[+].code = IDCO#732226 "The shock energy delivered at a particular sequence of a zone therapy. MDC_IDC_SET_ZONE_SHOCK_ENERGY_2"
* component[=].valueQuantity.value = 0.6 
* component[=].valueQuantity = 'J' "J"
* component[=].extension[observationInstance].valueInteger = 1
* component[+].code = IDCO#732290 "Zone Setting Number of Shocks MDC_IDC_SET_ZONE_NUM_SHOCKS_2"
* component[=].valueQuantity.value = 1 
* component[=].extension[observationInstance].valueInteger = 1
* component[+].code = IDCO#732227 "The shock energy delivered at a particular sequence of a zone therapy. MDC_IDC_SET_ZONE_SHOCK_ENERGY_3"
* component[=].valueQuantity.value = 41 
* component[=].valueQuantity = 'J' "J"
* component[=].extension[observationInstance].valueInteger = 1
* component[+].code = IDCO#732291 "Zone Setting Number of Shocks MDC_IDC_SET_ZONE_NUM_SHOCKS_3"
* component[=].valueQuantity.value = 1 
* component[=].extension[observationInstance].valueInteger = 1
* component[+].code = IDCO#731648 "Zone Setting Type Category"
* component[=].valueCodeableConcept = IDCO#754946 "VT"
* component[=].extension[observationInstance].valueInteger = 2
* component[+].code = IDCO#731712 "Zone Setting Vendor Type Category"
* component[=].valueCodeableConcept = IDCO#772161 "A Medtronic zone subclassification of ventricular fibrillation."
* component[=].extension[observationInstance].valueInteger = 2
* component[+].code = IDCO#731776 "Zone Setting Status"
* component[=].valueCodeableConcept = IDCO#755011 "Monitor"
* component[=].extension[observationInstance].valueInteger = 2
* component[+].code = IDCO#731840 "Zone Setting Detection Interval"
* component[=].valueQuantity.value = 375 
* component[=].valueQuantity = 'ms' "ms"
* component[=].extension[observationInstance].valueInteger = 2

*/