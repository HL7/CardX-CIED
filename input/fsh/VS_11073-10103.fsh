// To Do: add Context free code + display for:
// Device Type
ValueSet: MDCValueSet
Id: MDCValueSet
Title: "MDC Value Set"
Description: "ValueSet for the MDC CodeSystem."
// * ^status = #draft
* ^version = "1.0.0"
* ^experimental = false
* include codes from system Mdc

ValueSet: MDCIDCDeviceTypes
Id: MDCIDCDeviceTypes
Title: "MDC IDC Device Types"
Description: "ValueSet for the ISO/IEEE 11073-10103 Nomenclature Codes for Device Type"
* ^experimental = false
* Mdc#753665 "Pacemaker"
* Mdc#753666 "Defibrillator"
* Mdc#753667 "Cardiac Resynchronization Therapy - Defibrillator"
* Mdc#753668 "Cardiac Resynchronization Therapy - Pacemaker"
* Mdc#753669 "Implantable Diagnostic Monitor"
* Mdc#753670 "Other"

ValueSet: CIEDPatientIdentifier
Id: cied-patient-identifier
Title: "CIED Patient Identifier"
Description: "Identifiers which can be used to identify CIED patients."
* ^experimental = false
* include codes from system http://terminology.hl7.org/CodeSystem/v2-0203
* IDC#idco-pid "Identifier used in IDCO PID HL7 Segment"


ValueSet: IDCDeviceTypeVS
Id: 11073-10103-DeviceType
Title: "IEEE 11073-10103 Device Type"
Description: "The type of device as defined by IEEE 11073-10103"
* ^experimental = false
* IDC#753665 "Pacemaker"
* IDC#753666 "Defibrillator"
* IDC#753667 "Cardiac Resynchronization Therapy - Defibrillator"
* IDC#753668 "Cardiac Resynchronization Therapy - Pacemaker"
* IDC#753669 "Implantable Diagnostic Monitor"
* IDC#753670 "Other"

ValueSet: IDCSessionTypeVS
Id: 11073-10103-SessionType
Title: "IEEE 11073-10103 Session Type"
Description: "The type of session as defined by IEEE 11073-10103"
* ^experimental = false
* IDC#754049 "Implant"
* IDC#754050 "In Clinic"
* IDC#754051 "Remote"
* IDC#754052 "Remote Device Initiated"
* IDC#754053 "Remote Scheduled"
* IDC#754054 "Remote Patient Initiated"
* IDC#754055 "Other"
* IDC#754056 "Unknown"

CodeSystem: IDC
Title: "ISO/IEEE-11073-10103"
Description: "ISO/IEEE-11073-10103 - Implantable Device Cardiac nomenclature."
* ^caseSensitive = true
* ^experimental = false
* ^status = #active
* #753665 "Pacemaker"
    "A battery powered implantable device that uses low voltage pulses to stimulate the heart when it is beating too slow."
* #753666 "Defibrillator"
    "A battery powered implantable device that uses high voltage energy to shock the heart when it is beating too fast and mostly includes pacemaker functionality."
* #753667 "Cardiac Resynchronization Therapy - Defibrillator"
    "A battery powered implantable device that uses low voltage pulses to stimulate the ventricles of the heart in multiple locations to increase blood pumping efficiency and also includes pacemaker and defibrillator functionality."
* #753668 "Cardiac Resynchronization Therapy - Pacemaker"
    "A battery powered implantable device that uses low voltage pulses to stimulate the ventricles of the heart in multiple locations to increase blood pumping efficiency and also includes pacemaker functionality."
* #753669 "Implantable Diagnostic Monitor"
    "A battery powered implantable device that monitors and records cardiac activity and does not deliver any therapy."
* #753670 "Other"
    "A device type other than those included in the nomenclature."
* #754049 "Implant"
    "An indicator that the data was acquired at the time of the surgical implant."
* #754050 "In Clinic"
    "An indicator that the data was acquired when the patient was in a hospital or clinic."
* #754051 "Remote"
    "An indicator that the data was acquired while the patient was outside a hospital or clinic."
* #754052 "Remote Device Initiated"
    "An indicator that the data was acquired while the patient was outside a hospital or clinic using transmission equipment and because of a condition the device detected."
* #754053 "Remote Scheduled"
    "An indicator that the data was acquired while the patient was outside a hospital or clinic using transmission equipment and at a time that was planned in advance."
* #754054 "Remote Patient Initiated"
    "An indicator that the data was acquired while the patient was outside a hospital or clinic using transmission equipment and because of an action by the patient at a time that was not planned in advance."
* #754055 "Other"   
    "An interrogation session type not currently defined within the nomenclature."
* #754056 "Unknown"
    "An indicator showing that the session type is unknown for the interrogation session."
// additional code for patient identifier specified by IDCO IG
* #idco-pid "Identifier used in IDCO PID HL7 Segment"
    "IDCO specifies a combination of model and serial number as model:model-number/serial:serial-number"