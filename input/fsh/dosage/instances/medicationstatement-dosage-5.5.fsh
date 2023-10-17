Instance: card-medicationstatement-dosage-5.5
InstanceOf: CHMEDMedicationStatementCard
Title: "MedicationStatement - Dosage Sequence"
Description: "Example of a MedicationStatement to illustrate the dosage"
Usage: #example
* contained = med01
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:5c288e1e-d549-46c3-a835-60fb60b7d098"
* status = #completed
* medicationReference.reference = "#med01"
* subject.reference = "Patient/card-patient-s01"

* dosage[baseEntry][+].sequence = 0
* dosage[baseEntry][=].extension[+].url = "http://chmed.emediplan.ch/fhir/StructureDefinition/chmed-posology-object-type"
* dosage[baseEntry][=].extension[=].valueCoding = $chmed-cs-posology-object-type#5 "Sequence"
* dosage[baseEntry][=].extension[+].url = "http://chmed.emediplan.ch/fhir/StructureDefinition/chmed-posology-object-type"
* dosage[baseEntry][=].extension[=].valueCoding = $chmed-cs-posology-object-type#4 "Cyclic"

* dosage[baseEntry][=].extension[+].url = "http://chmed.emediplan.ch/fhir/StructureDefinition/chmed-timed-dosage-object-type"
* dosage[baseEntry][=].extension[=].valueCoding = $chmed-cs-timed-dosage-object-type#1 "DosageOnly"

* dosage[baseEntry][=].timing.repeat.count = 21
* dosage[baseEntry][=].timing.repeat.frequency = 1
* dosage[baseEntry][=].timing.repeat.period = 1
* dosage[baseEntry][=].timing.repeat.periodUnit = #d
* dosage[baseEntry][=].doseAndRate.doseQuantity[+].value = 1.0
* dosage[baseEntry][=].doseAndRate.doseQuantity[=].unit = "Tablet (unit of presentation)"
* dosage[baseEntry][=].doseAndRate.doseQuantity[=].system = "http://snomed.info/sct"
* dosage[baseEntry][=].doseAndRate.doseQuantity[=].code = #732936001


* dosage[additionalEntry][+].sequence = 1
* dosage[additionalEntry][=].extension[+].url = "http://chmed.emediplan.ch/fhir/StructureDefinition/chmed-posology-object-type"
* dosage[additionalEntry][=].extension[=].valueCoding = $chmed-cs-posology-object-type#5 "Sequence"

* dosage[additionalEntry][=].timing.repeat.when = #MORN // TODO: placeholder for running ig
* dosage[additionalEntry][=].timing.repeat.count = 7
* dosage[additionalEntry][=].timing.repeat.frequency = 1
* dosage[additionalEntry][=].timing.repeat.period = 1
* dosage[additionalEntry][=].timing.repeat.periodUnit = #d
* dosage[additionalEntry][=].doseAndRate.doseQuantity[+].value = 0.0
* dosage[additionalEntry][=].doseAndRate.doseQuantity[=].unit = "Tablet (unit of presentation)"
* dosage[additionalEntry][=].doseAndRate.doseQuantity[=].system = "http://snomed.info/sct"
* dosage[additionalEntry][=].doseAndRate.doseQuantity[=].code = #732936001
