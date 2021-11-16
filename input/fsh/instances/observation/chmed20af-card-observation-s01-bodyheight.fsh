Instance: chmed20af-card-observation-s01-bodyheight
InstanceOf: $bodyheight
Title: "Bodyheight"
Description: "Example for specifiying body height"
Usage: #example
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code.coding[0] = $loinc#8302-2 "Body height"
* code.coding[+] = $sct#50373000 "Body height measure"
* subject.reference = "Patient/chmed20af-card-patient-s01"
* effectiveDateTime = "2016-09-12"
* valueQuantity = 178 'cm' "centimeter"