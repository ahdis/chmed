Profile: CHMEDDosageStructuredSplitCard
Parent: CHEMEDDosageStructuredSplit
// Parent: CHMEDDosage
Id: chmed-dosage-structured-split-card
Title: "CHMED Dosage Structured Split (Card)"
Description: "Dosage structured split of a Medication Card document"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"
* . ^short = "CHMED Dosage Structured Split (Card)"

* obeys chmed-dosage



Mapping: CHMED23A-for-CHMEDDosageStructuredSplitCard
Id: CHMED23A
Title: "CHMED23A"
Source: CHMEDDosageStructuredSplitCard
Target: "http://emediplan.ch/chmed23a"
* -> "Posology"
