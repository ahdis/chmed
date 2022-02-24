Profile: CHMEDDosageStructuredNormalCard
Parent: CHEMEDDosageStructuredNormal
Id: chmed-dosage-structured-normal-card
Title: "CHMED Dosage Structured Normal (Card)"
Description: "Dosage structured normal of Medication Card document"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"
* . ^short = "CHMED Dosage Structured Normal (Card)"

* obeys chmed-dosage



Mapping: CHMED21A-for-CHMEDDosageStructuredNormalCard
Id: CHMED21A
Title: "Mapping to CHMED21A"
Source: CHMEDDosageStructuredNormalCard
Target: "http://emediplan.ch/chmed21a"
* -> "Posology"
