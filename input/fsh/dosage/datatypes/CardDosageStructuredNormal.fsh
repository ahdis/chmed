Profile: CHMEDDosageStructuredNormalCard
Parent: CHEMEDDosageStructuredNormal
Id: chmed-dosage-structured-normal-card
Title: "CHMED Dosage Structured Normal (Card)"
Description: "Dosage structured normal of a Medication Card document"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"
* . ^short = "CHMED Dosage Structured Normal (Card)"

* obeys chmed-dosage



Mapping: CHMED23A-for-CHMEDDosageStructuredNormalCard
Id: CHMED23A
Title: "CHMED23A"
Source: CHMEDDosageStructuredNormalCard
Target: "http://emediplan.ch/chmed23a"
* -> "Posology"
