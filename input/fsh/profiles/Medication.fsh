Profile: CHMEDMedication
Parent: CHEMEDMedication
Id: chmed-medication
Title: "CHMED Medication"
Description: "Profile for the Medication resource"
* . ^short = "CHMED Medication"
* code ^short = "Medicament"
* code.coding[GTIN] ^short = "GTIN (Global Trade Item Number)"
* code.coding[ATC] ^short = "Anatomical Therapeutic Chemical code (ATC)"
* code.text ^short = "Free text description"




Mapping: eMediplan-for-CHMEDMedication
Id: eMediplan
Title: "eMediplan"
Source: CHMEDMedication
Target: "https://emediplan.ch/wp-content/uploads/2023/09/20230815_eMediplan_ChMed23A_1.0-AND-eMediplan_ChMed23A_Posology_1.0.pdf"
* -> "Medicament"
* code.coding.code -> "id"
* code.coding.system -> "idType (2: GTIN, 3: Pharmacode, 4: Product Number, 5: ATC)"
* code.coding[GTIN] -> "id with idType 2: GTIN"
* code.coding[ATC] -> "id with idType 5: ATC"
* code.text -> "id with idType 1: None"

