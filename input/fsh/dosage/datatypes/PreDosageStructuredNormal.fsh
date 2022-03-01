Profile: CHMEDDosageStructuredNormalPre
Parent: CHEMEDDosageStructuredNormalMedicationRequest
// Parent: CHMEDDosage
Id: chmed-dosage-structured-normal-pre
Title: "CHMED Dosage Structured Normal (Pre)"
Description: "Dosage structured normal of a Medication Prescription document"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"
* . ^short = "CHMED Dosage Structured Normal (Pre)"

* obeys chmed-dosage



Mapping: CHMED21A-for-CHMEDDosageStructuredNormalPre
Id: CHMED21A
Title: "Mapping to CHMED21A"
Source: CHMEDDosageStructuredNormalPre
Target: "http://emediplan.ch/chmed21a"
* -> "Posology"
