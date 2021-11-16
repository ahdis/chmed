Instance: Inline-Instance-for-chmed20af-card-bundle-s01-12
InstanceOf: $bodyheight
Usage: #inline
* id = "23"
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code.coding[0] = $loinc#8302-2 "Body height"
* code.coding[+] = $sct#50373000 "Body height measure"
* subject.reference = "Patient/7"
* effectiveDateTime = "2016-09-12"
* valueQuantity = 178 'cm' "centimeter"