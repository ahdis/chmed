// BACTRIM forte Tabl, 800/160mg, Sulfamethoxazol, Trimethoprim
// https://compendium.ch/product/1145377-bactrim-forte-tabl-800-160mg
Instance: antibiotikum
InstanceOf: CHMEDMedication
Usage: #inline
* code = urn:oid:2.51.1.1#7680483060499 "BACTRIM forte Tabl 800/160mg" // Blister 20 Stk
* code.text = "BACTRIM forte Tabl 800/160mg"
* form = urn:oid:0.4.0.127.0.16.1.1.2.1#10219000 "Tablet"

* ingredient[0].itemCodeableConcept = $sct#387179001 "Trimethoprim (substance)"
* ingredient[=].itemCodeableConcept.text = "Trimethoprim"
* ingredient[=].strength.numerator = 160 'mg' "milligram"
* ingredient[=].strength.denominator = 1 $sct#732936001	"Tablet (unit of presentation)"

* ingredient[+].itemCodeableConcept = $sct#363528007 "Sulfamethoxazole (substance)"
* ingredient[=].itemCodeableConcept.text = "Sulfamethoxazole"
* ingredient[=].strength.numerator = 800 'mg' "milligram"
* ingredient[=].strength.denominator = 1 $sct#732936001	"Tablet (unit of presentation)"