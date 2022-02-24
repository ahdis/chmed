Profile: CHMEDDosageStructuredSplitPre
Parent: CHEMEDDosageStructuredSplitMedicationRequest
// Parent: CHMEDDosage
Id: chmed-dosage-structured-split-pre
Title: "CHMED Dosage Structured Split (Pre)"
Description: "Dosage structured split of Medication Prescription document"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"
* . ^short = "CHMED Dosage Structured Split (Pre)"

* obeys chmed-dosage 



Mapping: CHMED21A-for-CHMEDDosageStructuredSplitPre
Id: CHMED21A
Title: "Mapping to CHMED21A"
Source: CHMEDDosageStructuredSplitPre
Target: "http://emediplan.ch/chmed21a"
* -> "Posology"
