Profile: CHMED20AFMedicationStatementCard
Parent: CHEMEDMedicationStatementCard
Id: chmed20af-card-medicationstatement
Title: "CHMED20AF MedicationStatement (Card)"
Description: "Profile for the MedicationStatement resource of the Medication Card document"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"
* . ^short = "CHMED20AF MedicationStatement (Card)"
* contained
* extension contains CHMED20AFExtPrivateField named privatefield 0..*
* extension[privatefield] ^short = "Private fields for patient"
* identifier
* identifier.system
* identifier.value
* status
* category
* category.coding
* category.coding ^slicing.discriminator.type = #value
* category.coding ^slicing.discriminator.path = "system"
* category.coding ^slicing.rules = #open
* category.coding contains ATC 0..*
* category.coding[ATC] ^short = "ATC code (Level 1) if possible"
* category.coding[ATC].system 1..1
* category.coding[ATC].system = "http://www.whocc.no/atc" (exactly)
* category.coding[ATC].code 1..1
* category.coding[ATC].display 0..1
* category.text
* category.text ^short = "Note that no ATC Code is applied"
* medicationReference only Reference(CHMED20AFMedication)
* medicationReference
* subject only Reference(CHMED20AFPatientCard)
* subject
* informationSource only Reference(CHMED20AFPractitioner or CHMED20AFPatientCard)
* informationSource
* reasonCode
* reasonCode.text
* note
* dosage
* dosage[nonstructured]
* dosage[structurednormal] only CardDosageStructuredNormalChmed20af
* dosage[structurednormal]
* dosage[structuredsplit] only CardDosageStructuredSplitChmed20af
* dosage[structuredsplit]


Mapping: CHMED16A-for-CHMED20AFMedicationStatementCard
Id: CHMED16A
Title: "Mapping to CHMED16A"
Source: CHMED20AFMedicationStatementCard
Target: "http://emediplan.ch/chmed16a"
* -> "Medicament"
* extension[privatefield] -> "Medicament.PFields"
* medicationReference -> "Medicament.Id with Medicament.IdType 2 (GTIN)"
* subject -> "Patient"
* informationSource -> "Medicament.AutoMed (Selfmedication) if Patient, Medicament.PrscbBy if Practitioner"
* reasonCode -> "Medicament.TkgRsn"
* dosage[nonstructured] -> "Medicament.AppInstr"
* dosage[structurednormal] -> "Medicament.Pos"
* dosage[structuredsplit] -> "Medicament.Pos"