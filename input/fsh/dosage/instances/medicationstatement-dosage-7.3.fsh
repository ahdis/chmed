Instance: card-medicationstatement-dosage-7.3
InstanceOf: CHMEDMedicationStatementCard
Title: "MedicationStatement - Dosage DosageRange"
Description: "Example for a MedicationStatement (CARD) to illustrate the dosage"
Usage: #example
* contained = med01
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:5c288e1e-d549-46c3-a835-60fb60b7d098"
* status = #completed
* medicationReference.reference = "#med01"
* subject.reference = "Patient/card-patient-s01"

* dosage[baseEntry][+].doseAndRate.doseRange.low = 1 '{Piece}' "Piece"
* dosage[baseEntry][=].doseAndRate.doseRange.high = 3 '{Piece}' "Piece"

