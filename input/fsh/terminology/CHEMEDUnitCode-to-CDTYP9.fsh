Instance: CHEMEDUnitCode-to-CDTYP9
InstanceOf: ConceptMap
Usage: #definition
* publisher = "HCI Solutions AG"
* contact.name = "Hotline"
* contact.telecom.system = #email
* contact.telecom.value = "hotline@hcisolutions.ch"

* name = "UnitCodeMap"
* title = "CH EMED UnitCode to CDTYP9"
* status = #active
* description = "Mapping to describe the relationships between CH EMED UnitCode and CDTYP9"

* sourceUri = "http://fhir.ch/ig/ch-emed/ValueSet/UnitCode"
//* targetUri = "http://chmed.emediplan.ch/fhir/ValueSet/chmed-valueset-cdtyp9"

// SCT
* group[+].source = "http://snomed.info/sct"
* group[=].target[+] = "http://chmed.emediplan.ch/fhir/CodeSystem/chmed-codesystem-cdtyp9"

* group[=].element[+].code = #732981002
* group[=].element[=].display = "Actuation (unit of presentation)"
* group[=].element[=].target.code = #Hub
* group[=].element[=].target.equivalence = #equivalent


* group[=].element[+].code = #732978007
* group[=].element[=].display = "Ampule (unit of presentation)"
* group[=].element[=].target.equivalence = #unmatched

/*
* #Appl // TBD
* #Btl
* #Blist
* #Fl
* #MB
* #gtt
* #Dosierpip

* group[=].element[+].code = #tablet
* group[=].element[=].target.code = #732936001
* group[=].element[=].target.equivalence = #equivalent

* #Tb






// UCUM
* group[+].source = "http://chmed.emediplan.ch/fhir/CodeSystem/chmed-codesystem-cdtyp9"
* group[=].target[+] = "http://unitsofmeasure.org"

* #%
* #Bq //TBD
* #kBq
* #MBq
* #GBq
* #mcg
* #mg
* #g
* #kcal
* #kJ
* #mcmol
* #ml
* #Dos
* #EL
* #"Mio U"
* #"Mio UI"
* #Pck
* #Stk
* #TL //TBD
* #TU
* #U // früher E

* group[=].element[+].code = #U // früher E
* group[=].element[=].target.code = #{Unit}
* group[=].element[=].target.equivalence = #equivalent

* #UI


/*
* #LA
* #LS
* #mmol
* #MU
* #tablet
* #Dosierspr
* #gML
* #KL
* #kML 
* #MK
* #N/A
* #nML
* #Patr
* #Pfl
* #Pip
* #SDU
* #Teilpck
* #Topf
* #L
* #LSU
*/
