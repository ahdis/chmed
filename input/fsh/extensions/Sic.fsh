Extension: CHMEDSic
Id: chmed-sic
Title: "CHMED sic"
Description: "CHMED extension sic erat scriptum (latin) is intended to avoid misunderstandings between the physician and pharmacist and indicates to the pharmacist that the physician has deliberately chosen the prescription and wishes to prescribe the drug in exactly this way and not otherwise."
* ^context[0].type = #element
* ^context[=].expression = "MedicationRequest"
* . ^short = "CHMED sic"
* valueBoolean 1..



Mapping: eMediplan-for-CHMEDSic
Id: eMediplan
Title: "eMediplan"
Source: CHMEDSic
Target: "https://emediplan.ch/wp-content/uploads/2023/09/20230815_eMediplan_ChMed23A_1.0-AND-eMediplan_ChMed23A_Posology_1.0.pdf"
* -> "Medicament.sic" 
* valueBoolean -> "sic"
