Instance: riskcategory6-allergies-pm
InstanceOf: CHMEDRisks
Title: "Risk Category 6 (Peter Muster)"
Description: "Example of a Condition - Allergies: Penicillin"
Usage: #example
* clinicalStatus = $condition-clinical#active
* category = $chmed-codesystem-risks-category#6 "Allergies"
* code = $chmed-codesystem-risks-cdscode#571 "Penicillin-Allergie"
* subject = Reference(card1-patient-petermuster)
