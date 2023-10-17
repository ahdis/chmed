// PANADOL S Filmtabl, 500 mg, Paracetamol
// https://compendium.ch/product/1439290-panadol-s-filmtabl-500-mg
Instance: antipyretic
InstanceOf: CHMEDMedication
Usage: #inline
* code = urn:oid:2.51.1.1#7680588370066 "PANADOL S Filmtabl 500 mg" // Blister 20 Stk
* code.text = "PANADOL S Filmtabl 500 mg"
* form = urn:oid:0.4.0.127.0.16.1.1.2.1#10221000 "Film-coated tablet"

* ingredient[0].itemCodeableConcept = $sct#387517004 "Paracetamol (substance)"
* ingredient[=].itemCodeableConcept.text = "Paracetamol"
* ingredient[=].strength.numerator = 500 'mg' "milligram"
* ingredient[=].strength.denominator = 1 $sct#732936001	"Tablet (unit of presentation)"
