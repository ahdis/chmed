Instance: observation-bodyweight-pm
InstanceOf: CHMEDBodyWeight
Title: "Body Weight (Peter Muster)"
Description: "Example of an Observation - Body Weight: 81 kg"
Usage: #example
* status = #final
* category[VSCat] = $observation-category#vital-signs "Vital Signs"
* code.coding[BodyWeightCode] = $loinc#29463-7 "Body weight"
* subject = Reference(card1-patient-petermuster)
* effectiveDateTime = "2023-02-09"
* valueQuantity = 81 'kg' "kg"
* performer = Reference(practitionerrole-weiseweitblick)
