Instance: card-condition-s01-1-renalinsufficiency
InstanceOf: CHMEDRisks
Title: "Risk Reneal Insufficiency - Light"
Description: "Example for a Risk (Condition)"
Usage: #example
* clinicalStatus = $condition-clinical#active
* category = $chmed-codesystem-risks-category#1 "Renal Insufficiency"
* code = $chmed-codesystem-risks-cdscode#577 "Niereninsuffizienz, leichte (Clcr 60–90 ml/min)"
* subject.reference = "Patient/card-patient-s01"