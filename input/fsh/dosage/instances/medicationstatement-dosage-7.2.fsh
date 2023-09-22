Instance: card-medicationstatement-dosage-7.2
InstanceOf: CHMEDMedicationStatementCard
Title: "MedicationStatement - Dosage DosageFromTo"
Description: "Example for a MedicationStatement (CARD) to illustrate the dosage"
Usage: #example
* contained = med01
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:5c288e1e-d549-46c3-a835-60fb60b7d098"
* status = #completed
* medicationReference.reference = "#med01"
* subject.reference = "Patient/card-patient-s01"

* dosage[baseEntry][+].doseAndRate.doseQuantity[+] = 5.0 'mL' "milliliter"
* dosage[baseEntry][=].doseAndRate.doseQuantity[=].extension[+].url = "http://chmed.emediplan.ch/fhir/StructureDefinition/chmed-dose-quantity-to"
* dosage[baseEntry][=].doseAndRate.doseQuantity[=].extension[=].valueQuantity = 10.0 'mL' "milliliter"

* dosage[baseEntry][=].timing.repeat.duration = 45
* dosage[baseEntry][=].timing.repeat.durationUnit = #min