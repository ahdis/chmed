// SORTIS Filmtabl 20 mg, Atorvastatin
// https://compendium.ch/product/58356-sortis-filmtabl-20-mg
Instance: choles
InstanceOf: CHMEDMedication
Usage: #inline
* code = urn:oid:2.51.1.1#7680540850445 "SORTIS Filmtabl 20 mg" // Blister 30 Stk
* code.text = "SORTIS Filmtabl 20 mg"
* form = urn:oid:0.4.0.127.0.16.1.1.2.1#10221000 "Film-coated tablet"

* ingredient[0].itemCodeableConcept = $sct#373444002 "Atorvastatin (substance)"
* ingredient[=].itemCodeableConcept.text = "Atorvastatin"
* ingredient[=].strength.numerator = 20 'mg' "milligram"
* ingredient[=].strength.denominator = 1 $sct#732936001	"Tablet (unit of presentation)"
