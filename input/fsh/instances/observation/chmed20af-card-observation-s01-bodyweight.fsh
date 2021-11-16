Instance: chmed20af-card-observation-s01-bodyweight
InstanceOf: $bodyweight
Title: "Bodyweight"
Description: "Example for specifiying body weight"
Usage: #example
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code.coding[0] = $loinc#29463-7 "Body Weight"
* code.coding[+] = $loinc#3141-9 "Body weight Measured"
* code.coding[+] = $sct#27113001 "Body weight"
* subject.reference = "Patient/chmed20af-card-patient-s01"
* effectiveDateTime = "2016-09-12"
* valueQuantity = 72 'kg' "kilogram"