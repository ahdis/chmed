Instance: observation-bodyheight-pm
InstanceOf: CHMEDBodyHeight
Title: "Body Height (Peter Muster)"
Description: "Example of an Observation - Body Height: 180 cm"
Usage: #example
* status = #final
* category[VSCat] = $observation-category#vital-signs "Vital Signs"
* code.coding[BodyHeightCode] = $loinc#8302-2 "Body height"
* subject = Reference(card1-patient-petermuster)
* effectiveDateTime = "2023-02-09"
* valueQuantity = 180 'cm' "cm"
* performer = Reference(practitionerrole-weiseweitblick)
