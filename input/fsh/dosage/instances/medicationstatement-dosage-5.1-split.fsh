Instance: card-medicationstatement-dosage-5.1-split
InstanceOf: CHMED20AFMedicationStatementCard
Title: "MedicationStatement - Dosage Daily"
Description: "Example for a MedicationStatement (Card) to illustrate the dosage"
Usage: #example
* contained = med01
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:5c288e1e-d549-46c3-a835-60fb60b7d098"
* status = #completed
* medicationReference.reference = "#med01"
* subject.reference = "Patient/card-patient-s01"

* dosage[structuredsplit][+].extension[+].url = "http://chmed20af.emediplan.ch/fhir/StructureDefinition/chmed-posology-object-type"
* dosage[structuredsplit][=].extension[=].valueCoding = $chmed-cs-posology-object-type#1 "Daily"
* dosage[structuredsplit][=].sequence = 0
* dosage[structuredsplit][=].timing.repeat.when = #MORN
* dosage[structuredsplit][=].doseAndRate.doseQuantity = 1.0 '{Piece}' "Piece"

* dosage[structuredsplit][+].extension[+].url = "http://chmed20af.emediplan.ch/fhir/StructureDefinition/chmed-posology-object-type"
* dosage[structuredsplit][=].extension[=].valueCoding = $chmed-cs-posology-object-type#1 "Daily"
* dosage[structuredsplit][=].sequence = 0
* dosage[structuredsplit][=].timing.repeat.when = #EVE
* dosage[structuredsplit][=].doseAndRate.doseQuantity = 2.0 '{Piece}' "Piece"