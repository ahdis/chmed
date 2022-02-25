Instance: card-medicationstatement-dosage-5.4
InstanceOf: CHMED20AFMedicationStatementCard
Title: "MedicationStatement - Dosage Cyclic"
Description: "Example for a MedicationStatement (Card) to illustrate the dosage"
Usage: #example
* contained = med01
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:5c288e1e-d549-46c3-a835-60fb60b7d098"
* status = #completed
* medicationReference.reference = "#med01"
* subject.reference = "Patient/card-patient-s01"

* dosage[structurednormal][+].timing.repeat.frequency = 2
* dosage[structurednormal][=].timing.repeat.period = 1
* dosage[structurednormal][=].timing.repeat.periodUnit = #wk

* dosage[structurednormal][=].doseAndRate.doseQuantity = 1 '{Piece}' "Piece"