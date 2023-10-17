Instance: riskcategory7-allergies-mm
InstanceOf: CHMEDRisks
Title: "Risk Category 7 (Maxima Matter)"
Description: "Example of a Condition - Diabetes: Typ 1"
Usage: #example
* clinicalStatus = $condition-clinical#active
* category = $chmed-codesystem-risks-category#7 "Diabetes"
* code = $chmed-codesystem-risks-cdscode#779 "Diabetes mellitus Typ 1"
* subject = Reference(card-patient-maximamatter)
