Extension: CHMEDRecipient
Id: chmed-recipient
Title: "CHMED Recipient"
Description: "CHMED extension for the recipient (GLN) of the electronic prescription. To be used if the electronic prescription is to be transmitted electronically to a healthcare professional."
* ^context[0].type = #element
* ^context[=].expression = "Composition"
* . ^short = "CHMED Recipient"
* valueIdentifier 1..
* valueIdentifier only $ch-core-gln-identifier



Mapping: eMediplan-for-CHMEDRecipient
Id: eMediplan
Title: "eMediplan"
Source: CHMEDRecipient
Target: "https://emediplan.ch/wp-content/uploads/2023/09/20230815_eMediplan_ChMed23A_1.0-AND-eMediplan_ChMed23A_Posology_1.0.pdf"
* -> "Medication.rec" 
* valueIdentifier -> "rec"
