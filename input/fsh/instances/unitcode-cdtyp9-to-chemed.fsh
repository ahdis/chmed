Instance: unitcode-cdtyp9-to-chemed
InstanceOf: ConceptMap
Usage: #definition
* url = "http://chmed20af.emediplan.ch/fhir/ConceptMap/unitcode-cdtyp9-to-chemed"
* version = "0.1.0"
* name = "UnitCodeCDTyp9ToCHEMEDMapping"
* title = "Unit Code CDTyp9 to CH EMED mapping"
* status = #draft
* date = "2020-01-08"
* publisher = "HCI Solutions AG"
* contact.name = "Hotline"
* contact.telecom.system = #email
* contact.telecom.value = "hotline@hcisolutions.ch"
* description = "Unit Code mapping from CDTyp9 to CH EMED"
* jurisdiction = urn:iso:std:iso:3166#CH
* copyright = "CC-BY-SA-4.0"
* sourceUri = "http://chmed20af.emediplan.ch/fhir/ValueSet/chmed20af-valueset-cdtyp9"
* targetUri = "http://fhir.ch/ig/ch-emed/ValueSet/UnitCode"
* group[0].source = "http://chmed20af.emediplan.ch/fhir/CodeSystem/chmed20af-codesystem-cdtyp9"
* group[=].target = "http://snomed.info/sct"
* group[=].element[0].code = #tablet
* group[=].element[=].display = "Tablette"
* group[=].element[=].target.code = #732936001
* group[=].element[=].target.display = "Tablet (unit of presentation)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #Blist
* group[=].element[=].display = "Blister"
* group[=].element[=].target.code = #732984005
* group[=].element[=].target.display = "Blister (unit of presentation)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #Btl
* group[=].element[=].display = "Beutel"
* group[=].element[=].target.code = #733013000
* group[=].element[=].target.display = "Sachet (unit of presentation)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #Dosierpip
* group[=].element[=].display = "Dosierpipette"
* group[=].element[=].target.code = #733009007
* group[=].element[=].target.display = "Pipette (unit of presentation)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #Dosierspr
* group[=].element[=].display = "Dosierspritze"
* group[=].element[=].target.code = #733020007
* group[=].element[=].target.display = "Syringe (unit of presentation)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #Fl
* group[=].element[=].display = "Flasche"
* group[=].element[=].target.code = #732986007
* group[=].element[=].target.display = "Bottle (unit of presentation)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #gML
* group[=].element[=].display = "Messlöffel gross"
* group[=].element[=].target.code = #733015007
* group[=].element[=].target.display = "Spoonful (unit of presentation)"
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #gtt
* group[=].element[=].display = "Tropfen"
* group[=].element[=].target.code = #732994000
* group[=].element[=].target.display = "Drop (unit of presentation)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #Hub
* group[=].element[=].display = "Hub"
* group[=].element[=].target.code = #732981002
* group[=].element[=].target.display = "Actuation (unit of presentation)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #kML
* group[=].element[=].display = "Messlöffel klein"
* group[=].element[=].target.code = #733015007
* group[=].element[=].target.display = "Spoonful (unit of presentation)"
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #MB
* group[=].element[=].display = "Messbecher"
* group[=].element[=].target.code = #732991008
* group[=].element[=].target.display = "Cup (unit of presentation)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #nML
* group[=].element[=].display = "Messlöffel"
* group[=].element[=].target.code = #733015007
* group[=].element[=].target.display = "Spoonful (unit of presentation)"
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #Patr
* group[=].element[=].display = "Patrone"
* group[=].element[=].target.code = #732988008
* group[=].element[=].target.display = "Cartridge (unit of presentation)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #Pfl
* group[=].element[=].display = "Pflaster"
* group[=].element[=].target.code = #733005001
* group[=].element[=].target.display = "Patch (unit of presentation)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #Pip
* group[=].element[=].display = "Pipette"
* group[=].element[=].target.code = #733009007
* group[=].element[=].target.display = "Pipette (unit of presentation)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #Tb
* group[=].element[=].display = "Tube"
* group[=].element[=].target.code = #733024003
* group[=].element[=].target.display = "Tube (unit of presentation)"
* group[=].element[=].target.equivalence = #equal
* group[+].source = "http://chmed20af.emediplan.ch/fhir/CodeSystem/chmed20af-codesystem-cdtyp9"
* group[=].target = "http://unitsofmeasure.org"
* group[=].element[0].code = #E
* group[=].element[=].display = "Einheit"
* group[=].element[=].target.code = #U
* group[=].element[=].target.display = "Unit"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #g
* group[=].element[=].display = "Gramm"
* group[=].element[=].target.code = #g
* group[=].element[=].target.display = "gram"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #mcg
* group[=].element[=].display = "Mikrogramm"
* group[=].element[=].target.code = #ug
* group[=].element[=].target.display = "microgram"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #mg
* group[=].element[=].display = "Milligramm"
* group[=].element[=].target.code = #mg
* group[=].element[=].target.display = "milligram"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #ml
* group[=].element[=].display = "Milliliter"
* group[=].element[=].target.code = #mL
* group[=].element[=].target.display = "milliliter"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #mmol
* group[=].element[=].display = "Millimol"
* group[=].element[=].target.code = #mmol
* group[=].element[=].target.display = "millimole"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #MU
* group[=].element[=].display = "Millionen Einheiten"
* group[=].element[=].target.code = #10*6.{Unit}
* group[=].element[=].target.display = "(the number ten for arbitrary powers ^ 6) * Unit"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #TU
* group[=].element[=].display = "Tausend Einheiten"
* group[=].element[=].target.code = #10*3.{Unit}
* group[=].element[=].target.display = "Thousand Per * Unit"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #U
* group[=].element[=].display = "Einheit"
* group[=].element[=].target.code = #{Unit}
* group[=].element[=].target.display = "Unit"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #Dos
* group[=].element[=].display = "Dosis"
* group[=].element[=].target.code = #{Dose}
* group[=].element[=].target.display = "Dose"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #EL
* group[=].element[=].display = "Esslöffel"
* group[=].element[=].target.code = #[tbs_m]
* group[=].element[=].target.display = "tablespoon - metric"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #kcal
* group[=].element[=].display = "Kilokalorie"
* group[=].element[=].target.code = #kcal
* group[=].element[=].target.display = "kilocalorie"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #kJ
* group[=].element[=].display = "Kilojoule"
* group[=].element[=].target.code = #kJ
* group[=].element[=].target.display = "kilojoule"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #KL
* group[=].element[=].display = "Kaffeelöffel"
* group[=].element[=].target.code = #[tsp_m]
* group[=].element[=].target.display = "teaspoon - metric"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #Pck
* group[=].element[=].display = "Packung"
* group[=].element[=].target.code = #{Package}
* group[=].element[=].target.display = "Package"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #Stk
* group[=].element[=].display = "Stück"
* group[=].element[=].target.code = #{Piece}
* group[=].element[=].target.display = "Piece"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #%
* group[=].element[=].display = "%"
* group[=].element[=].target.code = #%
* group[=].element[=].target.display = "percent"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #GBq
* group[=].element[=].display = "GBq"
* group[=].element[=].target.code = #GBq
* group[=].element[=].target.display = "gigaBecquerel"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #kBq
* group[=].element[=].display = "kBq"
* group[=].element[=].target.code = #kBq
* group[=].element[=].target.display = "kiloBecquerel"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #L
* group[=].element[=].display = "L"
* group[=].element[=].target.code = #L
* group[=].element[=].target.display = "liter"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #MBq
* group[=].element[=].display = "MBq"
* group[=].element[=].target.code = #MBq
* group[=].element[=].target.display = "megaBecquerel"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #mcmol
* group[=].element[=].display = "mcmol"
* group[=].element[=].target.code = #umol
* group[=].element[=].target.display = "micromol"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #"Mio UI"
* group[=].element[=].display = "Mio UI"
* group[=].element[=].target.code = #10*6.[iU]
* group[=].element[=].target.display = "MillionInternationalUnit"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #"Mio U"
* group[=].element[=].display = "Mio U"
* group[=].element[=].target.code = #10*6.[U]
* group[=].element[=].target.display = "(the number ten for arbitrary powers ^ 6) * Unit"
* group[=].element[=].target.equivalence = #equal