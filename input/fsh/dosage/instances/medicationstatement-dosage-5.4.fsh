Instance: card-medicationstatement-dosage-5.4
InstanceOf: CHMEDMedicationStatementCard
Title: "MedicationStatement - Dosage Cyclic"
Description: "Example for a MedicationStatement (Card) to illustrate the dosage"
Usage: #example
* contained = med01
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:5c288e1e-d549-46c3-a835-60fb60b7d098"
* status = #completed
* medicationReference.reference = "#med01"
* subject.reference = "Patient/card-patient-s01"

* dosage[structurednormal][+].extension[+].url = "http://chmed.emediplan.ch/fhir/StructureDefinition/chmed-posology-object-type"
* dosage[structurednormal][=].extension[=].valueCoding = $chmed-cs-posology-object-type#4 "Cyclic"

* dosage[structurednormal][=].extension[+].url = "http://chmed.emediplan.ch/fhir/StructureDefinition/chmed-timed-dosage-object-type"
* dosage[structurednormal][=].extension[=].valueCoding = $chmed-cs-timed-dosage-object-type#1 "DosageOnly"

* dosage[structurednormal][=].timing.repeat.frequency = 2
* dosage[structurednormal][=].timing.repeat.period = 1
* dosage[structurednormal][=].timing.repeat.periodUnit = #wk

* dosage[structurednormal][=].doseAndRate.doseQuantity = 1.0 '{Piece}' "Piece"