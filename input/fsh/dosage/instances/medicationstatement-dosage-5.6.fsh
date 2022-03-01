Instance: card-medicationstatement-dosage-5.6
InstanceOf: CHMED20AFMedicationStatementCard
Title: "MedicationStatement - Dosage Even/odd days"
Description: "Example for a MedicationStatement (Card) to illustrate the dosage"
Usage: #example
* contained = med01
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:5c288e1e-d549-46c3-a835-60fb60b7d098"
* status = #completed
* medicationReference.reference = "#med01"
* subject.reference = "Patient/card-patient-s01"

* dosage[structurednormal][+].additionalInstruction = $chmed-cs-even-odd-days#even "Even days"
* dosage[structurednormal][=].timing.repeat.boundsPeriod.start = "2021-01-02"
* dosage[structurednormal][=].timing.repeat.frequency = 1
* dosage[structurednormal][=].timing.repeat.period = 2
* dosage[structurednormal][=].timing.repeat.periodUnit = #d
* dosage[structurednormal][=].doseAndRate.doseQuantity[+].value = 1
* dosage[structurednormal][=].doseAndRate.doseQuantity[=].unit = "Tablet (unit of presentation)"
* dosage[structurednormal][=].doseAndRate.doseQuantity[=].system = "http://snomed.info/sct"
* dosage[structurednormal][=].doseAndRate.doseQuantity[=].code = #732936001

