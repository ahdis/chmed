Instance: chmed20af-card-condition-s01-5
InstanceOf: Risks
Title: "RiskDriverExcluded"
Description: ">Risk Driver Excluded"
Usage: #example
* clinicalStatus = $condition-clinical#active
* category = $chmed20af-codesystem-risks-category#5 "Driver"
* subject.reference = "Patient/chmed20af-card-patient-s01"