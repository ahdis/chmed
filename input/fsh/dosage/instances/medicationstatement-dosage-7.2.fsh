Instance: card-medicationstatement-dosage-7.2
InstanceOf: CHMED20AFMedicationStatementCard
Title: "MedicationStatement - Dosage DosageFromTo"
Description: "Example for a MedicationStatement (Card) to illustrate the dosage"
Usage: #example
* contained = med01
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:5c288e1e-d549-46c3-a835-60fb60b7d098"
* status = #completed
* medicationReference.reference = "#med01"
* subject.reference = "Patient/card-patient-s01"

* dosage[structurednormal][+].doseAndRate.doseQuantity[+] = 5.0 'mL' "milliliter"
* dosage[structurednormal][=].doseAndRate.doseQuantity[=].extension[+].url = "http://chmed20af.emediplan.ch/fhir/StructureDefinition/chmed-dose-quantity-to"
* dosage[structurednormal][=].doseAndRate.doseQuantity[=].extension[=].valueQuantity = 10.0 'mL' "milliliter"

* dosage[structurednormal][=].timing.repeat.duration = 45
* dosage[structurednormal][=].timing.repeat.durationUnit = #min