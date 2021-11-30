Instance: card-observation-s01-bodyweight
InstanceOf: $bodyweight
Title: "Body Weight - 72 kg"
Description: "Example for a body weight (Observation)"
Usage: #example
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code.coding[0] = $loinc#29463-7 "Body Weight"
* code.coding[+] = $loinc#3141-9 "Body weight Measured"
* code.coding[+] = $sct#27113001 "Body weight"
* subject.reference = "Patient/card-patient-s01"
* effectiveDateTime = "2016-09-12"
* valueQuantity = 72 'kg' "kilogram"