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

// SCT
* group[+].source = "http://snomed.info/sct"
* group[=].target[+] = "http://chmed.emediplan.ch/fhir/CodeSystem/chmed-codesystem-cdtyp9"

* group[=].element[+].code = #732981002
* group[=].element[=].target.code = #Hub
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #732978007
* group[=].element[=].target.equivalence = #unmatched

* group[=].element[+].code = #732980001
* group[=].element[=].target.code = #Appl
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #732982009
* group[=].element[=].target.code = #Btl
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #732983004
* group[=].element[=].target.equivalence = #unmatched

* group[=].element[+].code = #732984005
* group[=].element[=].target.code = #Blist
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #732985006
* group[=].element[=].target.equivalence = #unmatched

* group[=].element[+].code = #732986007
* group[=].element[=].target.code = #Fl
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #732987003
* group[=].element[=].target.equivalence = #unmatched

* group[=].element[+].code = #732937005
* group[=].element[=].target.equivalence = #unmatched

* group[=].element[+].code = #732988008
* group[=].element[=].target.code = #Patr
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #732989000
* group[=].element[=].target.equivalence = #unmatched

* group[=].element[+].code = #732990009
* group[=].element[=].target.equivalence = #unmatched

* group[=].element[+].code = #732991008
* group[=].element[=].target.code = #MB
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #732992001
* group[=].element[=].target.equivalence = #unmatched

* group[=].element[+].code = #732993006
* group[=].element[=].target.equivalence = #unmatched

* group[=].element[+].code = #732994000
* group[=].element[=].target.code = #gtt
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #732995004
* group[=].element[=].target.equivalence = #unmatched

* group[=].element[+].code = #732996003
* group[=].element[=].target.equivalence = #unmatched

* group[=].element[+].code = #732997007
* group[=].element[=].target.equivalence = #unmatched

* group[=].element[+].code = #732998002
* group[=].element[=].target.equivalence = #unmatched

* group[=].element[+].code = #732999005
* group[=].element[=].target.equivalence = #unmatched

* group[=].element[+].code = #733001005
* group[=].element[=].target.equivalence = #unmatched

* group[=].element[+].code = #733002003
* group[=].element[=].target.equivalence = #unmatched

* group[=].element[+].code = #733003008
* group[=].element[=].target.equivalence = #unmatched

* group[=].element[+].code = #733004002
* group[=].element[=].target.equivalence = #unmatched

* group[=].element[+].code = #733005001
* group[=].element[=].target.code = #Pfl
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #733006000
* group[=].element[=].target.equivalence = #unmatched

* group[=].element[+].code = #733007009
* group[=].element[=].target.equivalence = #unmatched

* group[=].element[+].code = #733008004
* group[=].element[=].target.equivalence = #unmatched

* group[=].element[+].code = #733009007
* group[=].element[=].target[+].code = #Dosierpip // TBD: Dosierpip and/or Pip?
* group[=].element[=].target[=].equivalence = #equivalent
//* group[=].element[=].target[+].code = #Pip // TBD: Dosierpip and/or Pip?
//* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #733010002
* group[=].element[=].target.equivalence = #unmatched

* group[=].element[+].code = #733011003
* group[=].element[=].target.equivalence = #unmatched

* group[=].element[+].code = #733012005
* group[=].element[=].target.equivalence = #unmatched

* group[=].element[+].code = #733013000
* group[=].element[=].target.equivalence = #unmatched

* group[=].element[+].code = #733014006
* group[=].element[=].target.equivalence = #unmatched

* group[=].element[+].code = #733015007
* group[=].element[=].target.code = #nML
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #733016008
* group[=].element[=].target.equivalence = #unmatched

* group[=].element[+].code = #733017004
* group[=].element[=].target.equivalence = #unmatched

* group[=].element[+].code = #733018009
* group[=].element[=].target.equivalence = #unmatched

* group[=].element[+].code = #733019001
* group[=].element[=].target.equivalence = #unmatched

* group[=].element[+].code = #733020007
* group[=].element[=].target.code = #Dosierspr
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #733021006
* group[=].element[=].target.equivalence = #unmatched

* group[=].element[+].code = #732936001
* group[=].element[=].target.code = #tablet
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #733022004
* group[=].element[=].target.equivalence = #unmatched

* group[=].element[+].code = #733023009
* group[=].element[=].target.equivalence = #unmatched

* group[=].element[+].code = #733024003
* group[=].element[=].target.code = #Tb
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #733025002
* group[=].element[=].target.equivalence = #unmatched

* group[=].element[+].code = #733026001
* group[=].element[=].target.equivalence = #unmatched


// UCUM
* group[+].source = "http://unitsofmeasure.org"
* group[=].target[+] = "http://chmed.emediplan.ch/fhir/CodeSystem/chmed-codesystem-cdtyp9"

* group[=].element[+].code = #%
* group[=].element[=].target.code = #%
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #Bq
* group[=].element[=].target.code = #Bq
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #kBq
* group[=].element[=].target.code = #kBq
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #MBq
* group[=].element[=].target.code = #MBq
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #GBq
* group[=].element[=].target.code = #GBq
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #ng
* group[=].element[=].target.code = #ng
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #ug
* group[=].element[=].target.code = #mcg
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #mg
* group[=].element[=].target.code = #mg
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #g
* group[=].element[=].target.code = #g
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #kg
* group[=].element[=].target.code = #kg
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #kcal
* group[=].element[=].target.code = #kcal
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #kJ
* group[=].element[=].target.code = #kJ
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #meq
* group[=].element[=].target.equivalence = #unmatched

* group[=].element[+].code = #umol
* group[=].element[=].target.code = #mcmol
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #mmol
* group[=].element[=].target.code = #mmol
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #mol
* group[=].element[=].target.code = #mol
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #nL
* group[=].element[=].target.equivalence = #unmatched

* group[=].element[+].code = #uL
* group[=].element[=].target.code = #mcl
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #mL
* group[=].element[=].target.code = #ml
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #L
* group[=].element[=].target.code = #L
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #mm2
* group[=].element[=].target.equivalence = #unmatched

* group[=].element[+].code = #cm
* group[=].element[=].target.equivalence = #unmatched

* group[=].element[+].code = #cm2
* group[=].element[=].target.equivalence = #unmatched

* group[=].element[+].code = #cm3
* group[=].element[=].target.equivalence = #unmatched

* group[=].element[+].code = #s
* group[=].element[=].target.equivalence = #unmatched

* group[=].element[+].code = #min
* group[=].element[=].target.equivalence = #unmatched

* group[=].element[+].code = #h
* group[=].element[=].target.code = #h
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #d
* group[=].element[=].target.code = #Tag
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #{Dose}
* group[=].element[=].target.code = #Dos
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #[tbs_m]
* group[=].element[=].target.code = #EL
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #10*6.{Unit}
* group[=].element[=].target.code = #"Mio U" // TBD: Mio U und/oder MU?
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #10*6.[iU]
* group[=].element[=].target.code = #"Mio UI"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #[ppm]
* group[=].element[=].target.equivalence = #unmatched

* group[=].element[+].code = #{Package}
* group[=].element[=].target.code = #Pck
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #{Piece}
* group[=].element[=].target.code = #Stk
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #[tsp_m]
* group[=].element[=].target.code = #TL
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #10*3.{Unit}
* group[=].element[=].target.code = #TU
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #{Unit} 
* group[=].element[=].target.code = #U // TBD: U und/oder E?
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #[iU]
* group[=].element[=].target.code = #UI
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #[CFU]
* group[=].element[=].target.equivalence = #unmatched
