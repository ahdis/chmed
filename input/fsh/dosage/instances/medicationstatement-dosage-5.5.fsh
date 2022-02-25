Instance: card-medicationstatement-dosage-5.5
InstanceOf: CHMED20AFMedicationStatementCard
Title: "MedicationStatement - Dosage Sequence"
Description: "Example for a MedicationStatement (Card) to illustrate the dosage"
Usage: #example
* contained = med01
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:5c288e1e-d549-46c3-a835-60fb60b7d098"
* status = #completed
* medicationReference.reference = "#med01"
* subject.reference = "Patient/card-patient-s01"

* dosage[structuredsplit][+].sequence = 0
* dosage[structuredsplit][=].timing.repeat.count = 21
* dosage[structuredsplit][=].timing.repeat.frequency = 1
* dosage[structuredsplit][=].timing.repeat.period = 1
* dosage[structuredsplit][=].timing.repeat.periodUnit = #d
* dosage[structuredsplit][=].doseAndRate.doseQuantity[+].value = 1
* dosage[structuredsplit][=].doseAndRate.doseQuantity[=].unit = "Tablet (unit of presentation)"
* dosage[structuredsplit][=].doseAndRate.doseQuantity[=].system = "http://snomed.info/sct"
* dosage[structuredsplit][=].doseAndRate.doseQuantity[=].code = #732936001

* dosage[structuredsplit][+].sequence = 1
* dosage[structuredsplit][=].timing.repeat.count = 7
* dosage[structuredsplit][=].timing.repeat.frequency = 1
* dosage[structuredsplit][=].timing.repeat.period = 1
* dosage[structuredsplit][=].timing.repeat.periodUnit = #d
* dosage[structuredsplit][=].doseAndRate.doseQuantity[+].value = 0
* dosage[structuredsplit][=].doseAndRate.doseQuantity[=].unit = "Tablet (unit of presentation)"
* dosage[structuredsplit][=].doseAndRate.doseQuantity[=].system = "http://snomed.info/sct"
* dosage[structuredsplit][=].doseAndRate.doseQuantity[=].code = #732936001