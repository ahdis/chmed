Instance: card-observation-s01-bodyweight
InstanceOf: CHMEDBodyWeight
Title: "Body Weight - 72 kg"
Description: "Example for a body weight (Observation)"
Usage: #example
* status = #final
* category[VSCat] = $observation-category#vital-signs "Vital Signs"
* code.coding[BodyWeightCode] = $loinc#29463-7 "Body weight"
* subject.reference = "Patient/card-patient-s01"
* effectiveDateTime = "2016-09-12"
* valueQuantity = 72 'kg' "kg"