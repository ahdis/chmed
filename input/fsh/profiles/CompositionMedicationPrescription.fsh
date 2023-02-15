Profile: CHMEDCompositionMedicationPrescription
Parent: CHEMEDCompositionMedicationPrescription
Id: chmed-pre-composition
Title: "CHMED Medication Prescription Composition"
Description: "Profile for the Composition resource of the Medication Prescription document"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"
* . ^short = "CHMED Medication Prescription Composition"

* extension contains 
    CHMEDExtensionPrivateField named privateField 0..* and
    CHMEDExtensionReceiver named receiver 0..1
* extension[privateField] ^short = "Private Field"
* extension[receiver] ^short = "Receiver"

* subject only Reference(CHMEDPatientPre)
* subject ^short = "Patient"

* date ^short = "Date of creation"

* author[person] only Reference(CHMEDPractitionerRole)
* author[person] ..1
* author[person] ^short = "Author of the document (person)"

* section[prescription].entry only Reference(CHMEDMedicationRequestPre)
* section[prescription].entry ^short = "Medicament"
* section[prescription].author ..1
* section[prescription].author only Reference(CHMEDPractitionerRole)

* section[annotation].text ^short = "Remark"



Mapping: eMediplan-for-CHMEDCompositionMedicationPrescription
Id: eMediplan
Title: "eMediplan"
Source: CHMEDCompositionMedicationPrescription
Target: "https://emediplan.ch/software-anbieter/spezifikationen/"
* -> "Medication"
* extension[receiver] -> "Rcv"
* extension[privateField] -> "PFs -> Private Field"
* identifier -> "Id"
* type -> "MedType (Type 2: Prescription (Rx))"
* subject -> "Patient -> Patient"
* date -> "Dt"
* author[person] -> "Auth, Zsr (Organization.identifier)"

* section[prescription] -> "Meds -> Medicament"
* section[annotation] -> "Rmk"
