// VALIUM Inj Lös 10 mg/2ml, i.m./i.v., Diazepam
// https://compendium.ch/product/1145377-bactrim-forte-tabl-800-160mg
Instance: antikrampf
InstanceOf: CHMEDMedication
Usage: #inline
* code = urn:oid:2.51.1.1#7680304330176 "VALIUM Inj Lös 10 mg/2ml i.m./i.v."
* code.text = "VALIUM Inj Lös 10 mg/2ml i.m./i.v."
* form = urn:oid:0.4.0.127.0.16.1.1.2.1#11201000 "Solution for injection"

* ingredient[0].itemCodeableConcept = $sct#387264003 "Diazepam (substance)"
* ingredient[=].itemCodeableConcept.text = "Diazepam"
* ingredient[=].strength.numerator = 10 'mg' "milligram"
* ingredient[=].strength.denominator = 1 $sct#732978007	"Ampule (unit of presentation)"
