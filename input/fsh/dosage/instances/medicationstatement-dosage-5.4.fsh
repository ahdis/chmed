Instance: card-medicationstatement-dosage-5.4
InstanceOf: CHMEDMedicationStatementCard
Title: "MedicationStatement - Dosage Cyclic"
Description: "Example of a MedicationStatement to illustrate the dosage"
Usage: #example
* contained = med01
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:5c288e1e-d549-46c3-a835-60fb60b7d098"
* status = #completed
* medicationReference.reference = "#med01"
* subject.reference = "Patient/card-patient-s01"

* dosage[baseEntry][+].extension[+].url = "http://chmed.emediplan.ch/fhir/StructureDefinition/chmed-posology-object-type"
* dosage[baseEntry][=].extension[=].valueCoding = $chmed-cs-posology-object-type#4 "Cyclic"

* dosage[baseEntry][=].extension[+].url = "http://chmed.emediplan.ch/fhir/StructureDefinition/chmed-timed-dosage-object-type"
* dosage[baseEntry][=].extension[=].valueCoding = $chmed-cs-timed-dosage-object-type#1 "DosageOnly"

* dosage[baseEntry][=].timing.repeat.frequency = 2
* dosage[baseEntry][=].timing.repeat.period = 1
* dosage[baseEntry][=].timing.repeat.periodUnit = #wk

* dosage[baseEntry][=].doseAndRate.doseQuantity = 1.0 '{Piece}' "Piece"