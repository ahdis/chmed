Profile: CHMEDMedicationStatementCard
Parent: CHEMEDMedicationStatementCard
Id: chmed-card-medicationstatement
Title: "CHMED MedicationStatement (Card)"
Description: "Profile for the MedicationStatement resource of the Medication Card document"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"
* . ^short = "CHMED MedicationStatement (Card)"

* extension contains CHMEDExtensionPrivateField named privateField 0..*
* extension[privateField] ^short = "Private Field"

* extension[substitution] ^short = "'equivalent': Substitution occurred or is permitted with another bioequivalent and therapeutically equivalent product." 
* extension[substitution].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-substanceAdminSubstitution#E

* medicationReference only Reference(CHMEDMedication)

* subject only Reference(CHMEDPatient)
* subject ^short = "Patient"

* informationSource 

* reasonCode.text ^short = "Taking reason"

* dosage ^short = "Posology"
* dosage[baseEntry]
* dosage[additionalEntry]


Mapping: CHMED23A-for-CHMEDMedicationStatementCard
Id: CHMED23A
Title: "CHMED23A"
Source: CHMEDMedicationStatementCard
Target: "http://emediplan.ch/chmed23a"
* -> "Medicament"
* extension[privateField] -> "PFs -> Private Field"
* extension[substitution] -> "Sub"
* medicationReference -> "Id with IdType"
* subject -> "Patient"
* informationSource -> "PrscbBy"
* reasonCode.text -> "TkgRsn"

* dosage -> "Pos -> Posology"
* dosage[baseEntry] -> "Posology"
* dosage[additionalEntry] -> "Posology"


Mapping: CHMED16A-for-CHMEDMedicationStatementCard
Id: CHMED16A
Title: "CHMED16A"
Source: CHMEDMedicationStatementCard
Target: "http://emediplan.ch/chmed16a"
* -> "Medicament"
* extension[privateField] -> "PFields -> Private Field"
* extension[substitution] -> "Subs"
* medicationReference -> "Id with IdType"
* subject -> "Patient"
* informationSource -> "PrscbBy"
* reasonCode.text -> "TkgRsn"

* dosage -> "Pos -> Posology"
* dosage[baseEntry] -> "Posology"
* dosage[additionalEntry] -> "Posology"