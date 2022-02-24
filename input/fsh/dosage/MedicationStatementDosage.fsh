Profile: CHMEDMedicationStatementDosage
//Parent: CHEMEDMedicationStatementCard
Parent: MedicationStatement
Id: chmed-medicationstatement-dosage
Title: "CHMED MedicationStatement Dosage"
Description: "Profile for the MedicationStatement resource to define the dosage according to the 'Posology' in CHMED21A"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"
* . ^short = "CHMED MedicationStatement Dosage"

* dosage MS
* dosage 1..
* dosage only CHMEDDosage
/*
* dosage MS
* dosage[nonstructured] MS
* dosage[structurednormal] only CHMEDDosageStructuredNormalCard
* dosage[structurednormal] MS
* dosage[structuredsplit] only CHMEDDosageStructuredSplitCard
* dosage[structuredsplit] MS
*/


Mapping: CHMED21A-for-CHMEDMedicationStatementDosage
Id: CHMED21A
Title: "Mapping to CHMED21A"
Source: CHMEDMedicationStatementDosage
Target: "http://emediplan.ch/chmed21a"
* -> "Medicament"
* dosage -> "Medicament.Pos"
