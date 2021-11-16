Profile: MedicationStatementCard
Parent: CHEMEDMedicationStatementCard
Id: chmed20af-card-medicationstatement
Title: "MedicationStatement (Card)"
Description: "Profile for the MedicationStatement resource of the Medication Card document"
* . ^short = "CHMED20AF MedicationStatement (Card)"
* contained MS
* extension contains ExtPrivateField named privatefield 0..* MS
* extension[privatefield] ^short = "Private fields for patient"
* identifier MS
* identifier.system MS
* identifier.value MS
* status MS
* category MS
* category.coding MS
* category.coding ^slicing.discriminator.type = #value
* category.coding ^slicing.discriminator.path = "system"
* category.coding ^slicing.rules = #open
* category.coding contains ATC 0..* MS
* category.coding[ATC] ^short = "ATC code (Level 1) if possible"
* category.coding[ATC].system 1..1 MS
* category.coding[ATC].system = "http://www.whocc.no/atc" (exactly)
* category.coding[ATC].code 1..1 MS
* category.coding[ATC].display 0..1 MS
* category.text MS
* category.text ^short = "Note that no ATC Code is applied"
* medicationReference only Reference(Medication)
* medicationReference MS
* subject only Reference(PatientCard)
* subject MS
* informationSource only Reference(Practitioner or PatientCard)
* informationSource MS
* reasonCode MS
* reasonCode.text MS
* note MS
* dosage MS
* dosage[nonstructured] MS
* dosage[structurednormal] only CardDosageStructuredNormalChmed20af
* dosage[structurednormal] MS
* dosage[structuredsplit] only CardDosageStructuredSplitChmed20af
* dosage[structuredsplit] MS


Mapping: CHMED16A-for-MedicationStatementCard
Id: CHMED16A
Title: "Mapping to CHMED16A"
Source: MedicationStatementCard
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