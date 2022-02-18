Instance: card-condition-s01-6-allergies
InstanceOf: CHMED20AFRisks
Title: "Risk Allergies - Betablocker/Penicillin"
Description: "Example for a Risk (Condition)"
Usage: #example
* clinicalStatus = $condition-clinical#active
* category = $chmed20af-codesystem-risks-category#6 "Allergies"
* code.coding[0] = $chmed20af-codesystem-risks-cdscode#555 "Betablocker-Allergie (Propranolol-Typ)"
* code.coding[+] = $chmed20af-codesystem-risks-cdscode#571 "Penicillin-Allergie"
* subject.reference = "Patient/card-patient-s01"