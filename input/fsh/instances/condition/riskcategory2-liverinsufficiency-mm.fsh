Instance: riskcategory2-liverinsufficiency-mm
InstanceOf: CHMEDRisks
Title: "Risk Category 2 (Maxima Matter)"
Description: "Example of a Condition - Liver Insufficiency"
Usage: #example
* clinicalStatus = $condition-clinical#active
* category = $chmed-codesystem-risks-category#2 "Liver Insufficiency"
* subject = Reference(card-patient-maximamatter)
