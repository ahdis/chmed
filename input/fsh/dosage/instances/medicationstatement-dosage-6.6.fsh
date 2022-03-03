Instance: card-medicationstatement-dosage-6.6
InstanceOf: CHMEDMedicationStatementCard
Title: "MedicationStatement - Dosage Interval"
Description: "Example for a MedicationStatement (Card) to illustrate the dosage"
Usage: #example
* contained = med01
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:5c288e1e-d549-46c3-a835-60fb60b7d098"
* status = #completed
* medicationReference.reference = "#med01"
* subject.reference = "Patient/card-patient-s01"

* dosage[structurednormal][+].extension[+].url = "http://chmed.emediplan.ch/fhir/StructureDefinition/chmed-timed-dosage-object-type"
* dosage[structurednormal][=].extension[=].valueCoding = $chmed-cs-timed-dosage-object-type#6 "Interval"

* dosage[structurednormal][=].maxDosePerPeriod.numerator = 1.0 '{Piece}' "Piece"
* dosage[structurednormal][=].maxDosePerPeriod.denominator = 6 'h' "Hour"
