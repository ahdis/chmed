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

* extension[substitution] ^short = "'E (equivalent)': Substitution occurred or is permitted with another bioequivalent and therapeutically equivalent product." 

* medicationReference only Reference(CHMEDMedication)

* subject ^short = "Patient"

* informationSource only Reference(CHMEDPractitionerRole or CHMEDPatientCard or RelatedPerson)
* informationSource ^short = "PractitionerRole for 'PrscbBy' or Patient for 'Automed'"

* reasonCode.text ^short = "Taking reason"

* dosage ^short = "Posology"
* dosage[baseEntry]
* dosage[additionalEntry]


Mapping: eMediplan-for-CHMEDMedicationStatementCard
Id: eMediplan
Title: "eMediplan"
Source: CHMEDMedicationStatementCard
Target: "https://emediplan.ch/software-anbieter/spezifikationen/"
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
