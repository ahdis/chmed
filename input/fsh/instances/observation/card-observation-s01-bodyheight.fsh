Instance: card-observation-s01-bodyheight
InstanceOf: CHMEDBodyHeight
Title: "Body Height - 178 cm"
Description: "Example for a body height (Observation)"
Usage: #example
* status = #final
* category[VSCat] = $observation-category#vital-signs "Vital Signs"
* code.coding[BodyHeightCode] = $loinc#8302-2 "Body height"
//* code.coding[+] = $sct#50373000 "Body height measure"
* subject.reference = "Patient/card-patient-s01"
* effectiveDateTime = "2016-09-12"
* valueQuantity = 178 'cm' "cm"