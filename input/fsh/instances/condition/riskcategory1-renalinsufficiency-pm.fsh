Instance: riskcategory1-renalinsufficiency-pm
InstanceOf: CHMEDRisks
Title: "Risk Category 1 (Peter Muster)"
Description: "Example of a Condition - Renal Insufficiency: Mild"
Usage: #example
* clinicalStatus = $condition-clinical#active
* category = $chmed-codesystem-risks-category#1 "Renal insufficiency"
* code = $chmed-codesystem-risks-cdscode#577 "Niereninsuffizienz, leichte (Clcr 60–90 ml/min)"
* subject = Reference(card1-patient-petermuster)
