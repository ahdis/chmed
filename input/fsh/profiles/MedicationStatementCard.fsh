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

* extension contains $ch-emed-ext-substitution named substitution 0..1
* extension[substitution] ^short = "'equivalent': Substitution occurred or is permitted with another bioequivalent and therapeutically equivalent product." 
* extension[substitution].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-substanceAdminSubstitution#E

* medicationReference only Reference(CHMEDMedication)

* subject only Reference(CHMEDPatient)
* subject ^short = "Patient"

* informationSource only Reference($ch-core-practitioner or $ch-core-practitionerrole or CHMEDPatient)

* reasonCode.text ^short = "Taking reason"

* note.text ^short = "Application instruction"

* dosage ^short = "Posology"
* dosage[nonstructured]
* dosage[structurednormal]
* dosage[structuredsplit]


Mapping: CHMED23A-for-CHMEDMedicationStatementCard
Id: CHMED23A
Title: "CHMED23A"
Source: CHMEDMedicationStatementCard
Target: "http://emediplan.ch/chmed23a"
* -> "Medicament"
* extension[privateField] -> "PFs -> PrivateField"
* extension[substitution] -> "Sub"
* medicationReference -> "Id with IdType 1 (None) or IdType 2 (GTIN)"
* subject -> "Patient"
* informationSource -> "AutoMed if Patient, PrscbBy if Practitioner/PractitionerRole"
* reasonCode.text -> "TkgRsn"
* note.text -> "AppInstr"

* dosage -> "Pos -> Posology"
* dosage[nonstructured] -> "Posology -> PO.Text"
* dosage[structurednormal] -> "Posology"
* dosage[structuredsplit] -> "Posology"
