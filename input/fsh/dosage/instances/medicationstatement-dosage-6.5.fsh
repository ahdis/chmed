Instance: card-medicationstatement-dosage-6.5
InstanceOf: CHMEDMedicationStatementCard
Title: "MedicationStatement - Dosage DaysOfMonth"
Description: "Example for a MedicationStatement (Card) to illustrate the dosage"
Usage: #example
* contained = med01
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:5c288e1e-d549-46c3-a835-60fb60b7d098"
* status = #completed
* medicationReference.reference = "#med01"
* subject.reference = "Patient/card-patient-s01"

* dosage[baseEntry][+].extension[+].url = "http://chmed.emediplan.ch/fhir/StructureDefinition/chmed-timed-dosage-object-type"
* dosage[baseEntry][=].extension[=].valueCoding = $chmed-cs-timed-dosage-object-type#5 "DaysOfMonth"

* dosage[baseEntry][=].timing.repeat.extension[+].url = "http://hl7.org/fhir/StructureDefinition/timing-dayOfMonth"
* dosage[baseEntry][=].timing.repeat.extension[=].valuePositiveInt = 1

* dosage[baseEntry][=].timing.repeat.extension[+].url = "http://hl7.org/fhir/StructureDefinition/timing-dayOfMonth"
* dosage[baseEntry][=].timing.repeat.extension[=].valuePositiveInt = 15

* dosage[baseEntry][=].doseAndRate.doseQuantity = 1 '{Piece}' "Piece"
