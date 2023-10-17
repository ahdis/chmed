Instance: riskcategory3-reproduction-mm
InstanceOf: CHMEDRisks
Title: "Risk Category 3 (Maxima Matter)"
Description: "Example of a Condition - Reproduction: Women of Childbearing Age"
Usage: #example
* clinicalStatus = $condition-clinical#active
* category = $chmed-codesystem-risks-category#3 "Reproduction"
* code = $chmed-codesystem-risks-cdscode#612 "Frauen im gebärfähigen Alter"
* subject = Reference(card-patient-maximamatter)
