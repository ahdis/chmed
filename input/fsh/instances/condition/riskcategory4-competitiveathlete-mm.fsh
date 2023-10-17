Instance: riskcategory4-competitiveathlete-mm
InstanceOf: CHMEDRisks
Title: "Risk Category 4 (Maxima Matter)"
Description: "Example of a Condition - Competitive Athlete"
Usage: #example
* clinicalStatus = $condition-clinical#active
* category = $chmed-codesystem-risks-category#4 "Competitive athlete"
* subject = Reference(card-patient-maximamatter)
