Instance: Inline-Instance-for-chmed20af-card-bundle-s01-3
InstanceOf: Risks
Usage: #inline
* id = "33"
* clinicalStatus = $condition-clinical#active
* category = $chmed20af-codesystem-risks-category#6 "Allergies"
* code.coding[0] = $chmed20af-codesystem-risks-cdscode#555 "Betablocker-Allergie (Propranolol-Typ)"
* code.coding[+] = $chmed20af-codesystem-risks-cdscode#571 "Penicillin-Allergie"
* subject.reference = "Patient/7"