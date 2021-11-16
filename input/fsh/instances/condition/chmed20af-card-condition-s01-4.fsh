Instance: chmed20af-card-condition-s01-4
InstanceOf: Risks
Title: "RiskCompetitiveAthleteExcluded"
Description: ">Risk Competitive Athlete Excluded"
Usage: #example
* clinicalStatus = $condition-clinical#active
* category = $chmed20af-codesystem-risks-category#4 "Competitive athlete"
* subject.reference = "Patient/chmed20af-card-patient-s01"