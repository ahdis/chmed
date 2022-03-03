Instance: card-condition-s01-5-driver
InstanceOf: CHMEDRisks
Title: "Risk Driver - Excluded"
Description: "Example for a Risk (Condition)"
Usage: #example
* clinicalStatus = $condition-clinical#active
* category = $chmed-codesystem-risks-category#5 "Driver"
* subject.reference = "Patient/card-patient-s01"