Instance: chmed20af-card-condition-s01-6
InstanceOf: Risks
Title: "RiskAllergies"
Description: ">Risk Allergies"
Usage: #example
* clinicalStatus = $condition-clinical#active
* category = $chmed20af-codesystem-risks-category#6 "Allergies"
* code.coding[0] = $chmed20af-codesystem-risks-cdscode#555 "Betablocker-Allergie (Propranolol-Typ)"
* code.coding[+] = $chmed20af-codesystem-risks-cdscode#571 "Penicillin-Allergie"
* subject.reference = "Patient/chmed20af-card-patient-s01"