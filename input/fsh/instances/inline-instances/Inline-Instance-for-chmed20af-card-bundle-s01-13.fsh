Instance: Inline-Instance-for-chmed20af-card-bundle-s01-13
InstanceOf: $bodyweight
Usage: #inline
* id = "24"
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code.coding[0] = $loinc#29463-7 "Body Weight"
* code.coding[+] = $loinc#3141-9 "Body weight Measured"
* code.coding[+] = $sct#27113001 "Body weight"
* subject.reference = "Patient/7"
* effectiveDateTime = "2016-09-12"
* valueQuantity = 72 'kg' "kilogram"