Instance: CDTYP9-to-CHEMEDUnits
InstanceOf: ConceptMap
Usage: #definition
* publisher = "HCI Solutions AG"
* contact.name = "Hotline"
* contact.telecom.system = #email
* contact.telecom.value = "hotline@hcisolutions.ch"

* name = "UnitsMap"
* title = "CDTYP9 to CH EMED Units"
* status = #active
* description = "Mapping to describe the relationships between CDTYP9 and CH EMED units"

* sourceUri = "http://chmed.emediplan.ch/fhir/ValueSet/chmed-valueset-cdtyp9"
* targetUri = "http://fhir.ch/ig/ch-emed/ValueSet/UnitCode"

// SCT
* group[+].source = "http://chmed.emediplan.ch/fhir/CodeSystem/chmed-codesystem-cdtyp9"
* group[=].target[+] = "http://snomed.info/sct"

* group[=].element[+].code = #Hub
* group[=].element[=].target.code = #732981002
* group[=].element[=].target.equivalence = #equivalent


* group[=].element[+].target.code = #732978007
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
