// CO-DIOVAN Filmtabl, 160/12.5 mg, Hydrochlorothiazid, Valsartan
// https://compendium.ch/product/93139-co-diovan-filmtabl-160-12-5-mg
Instance: coantihyp
InstanceOf: CHMEDMedication
Usage: #inline
* code = urn:oid:2.51.1.1#7680544701187 "CO-DIOVAN Filmtabl 160/12.5 mg" // Blister 28 Stk
* code.text = "CO-DIOVAN Filmtabl 160/12.5 mg"
* form = urn:oid:0.4.0.127.0.16.1.1.2.1#10221000 "Film-coated tablet"

* ingredient[0].itemCodeableConcept = $sct#387525002 "Hydrochlorothiazide (substance)"
* ingredient[=].itemCodeableConcept.text = "Hydrochlorothiazide"
* ingredient[=].strength.numerator = 12.5 'mg' "milligram"
* ingredient[=].strength.denominator = 1 $sct#732936001	"Tablet (unit of presentation)"

* ingredient[+].itemCodeableConcept = $sct#386876001 "Valsartan (substance)"
* ingredient[=].itemCodeableConcept.text = "Valsartan"
* ingredient[=].strength.numerator = 160 'mg' "milligram"
* ingredient[=].strength.denominator = 1 $sct#732936001	"Tablet (unit of presentation)"