Instance: card-medicationstatement-tt-4-spiricort
InstanceOf: CHMEDMedicationStatementCard
Title: "MedicationStatement - SPIRICORT"
Description: "Example for a MedicationStatement (CARD)"
Usage: #example
* contained = tt-4-spiricort
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:87799ce6-33f1-48db-ac1b-bdc7c8c6fe90"
* status = #completed
* medicationReference.reference = "#tt-4-spiricort"
* subject.reference = "Patient/card-patient-s01"
* informationSource.reference = "PractitionerRole/practitionerrole-s01"
* reasonCode.text = "Blutverdünnung"
* note.text = "ausschleichend (1. Tag 40 mg | 2. Tag 40 mg | 3.-9. Tag 30 mg | 10.-16. Tag 25 mg)"

// 1. Tag + 2. Tag (2d)
* dosage[baseEntry][+].sequence = 1
* dosage[baseEntry][=].timing.repeat.boundsPeriod.start = "2017-09-05"
* dosage[baseEntry][=].timing.repeat.boundsPeriod.end = "2017-09-20"
* dosage[baseEntry][=].timing.repeat.count = 2
* dosage[baseEntry][=].timing.repeat.frequency = 1
* dosage[baseEntry][=].timing.repeat.period = 1
* dosage[baseEntry][=].timing.repeat.periodUnit = #d
* dosage[baseEntry][=].route = urn:oid:0.4.0.127.0.16.1.1.2.1#20053000 "Oral use"
* dosage[baseEntry][=].doseAndRate.doseQuantity = 40 'mg' "milligram"

// 3.-9. Tag (7d)
* dosage[additionalEntry][+].sequence = 2
* dosage[additionalEntry][=].timing.repeat.when = #MORN // TODO: placeholder for running ig
* dosage[additionalEntry][=].timing.repeat.count = 7
* dosage[additionalEntry][=].timing.repeat.frequency = 1
* dosage[additionalEntry][=].timing.repeat.period = 1
* dosage[additionalEntry][=].timing.repeat.periodUnit = #d
* dosage[additionalEntry][=].doseAndRate.doseQuantity = 30 'mg' "milligram"

// 10.-16. Tag (7d)
* dosage[additionalEntry][+].sequence = 3
* dosage[additionalEntry][=].timing.repeat.when = #MORN // TODO: placeholder for running ig
* dosage[additionalEntry][=].timing.repeat.count = 7
* dosage[additionalEntry][=].timing.repeat.frequency = 1
* dosage[additionalEntry][=].timing.repeat.period = 1
* dosage[additionalEntry][=].timing.repeat.periodUnit = #d
* dosage[additionalEntry][=].doseAndRate.doseQuantity = 25 'mg' "milligram"