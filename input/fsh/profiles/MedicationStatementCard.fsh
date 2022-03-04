Profile: CHMEDMedicationStatementCard
Parent: CHEMEDMedicationStatementCard
Id: chmed-card-medicationstatement
Title: "CHMED MedicationStatement (Card)"
Description: "Profile for the MedicationStatement resource of the Medication Card document"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"
* . ^short = "CHMED MedicationStatement (Card)"
* contained

* extension contains CHMEDExtensionPrivateField named privateField 0..*
* extension[privateField] ^short = "Private Field"

* extension contains $ch-emed-ext-substitution named substitution 0..1
* extension[substitution] ^short = "'equivalent': Substitution occurred or is permitted with another bioequivalent and therapeutically equivalent product." 
* extension[substitution].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-substanceAdminSubstitution#E

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
* medicationReference only Reference(CHMEDMedication)
* medicationReference

* subject only Reference(CHMEDPatientCard)
* subject ^short = "Patient"

* informationSource only Reference(CHMEDPractitioner or CHMEDPatientCard)
* informationSource
* reasonCode
* reasonCode.text

* note.text ^short = "Application instruction"

* dosage ^short = "Posology"
* dosage[nonstructured]
* dosage[structurednormal] only CHMEDDosageStructuredNormalCard
* dosage[structurednormal]
* dosage[structuredsplit] only CHMEDDosageStructuredSplitCard
* dosage[structuredsplit]


Mapping: CHMED21A-for-CHMEDMedicationStatementCard
Id: CHMED21A
Title: "CHMED21A"
Source: CHMEDMedicationStatementCard
Target: "http://emediplan.ch/chmed21a"
* -> "Medicament"
* extension[privateField] -> "PFs -> PrivateField"
* extension[substitution] -> "Sub"
//* medicationReference -> "Medicament.Id with Medicament.IdType 2 (GTIN)"
//* subject -> "Patient"
//* informationSource -> "Medicament.AutoMed (Selfmedication) if Patient, Medicament.PrscbBy if Practitioner"
//* reasonCode -> "Medicament.TkgRsn"
* note.text -> "AppInstr"

* dosage -> "Pos -> Posology"
* dosage[nonstructured] -> "Posology -> PO.Text"
