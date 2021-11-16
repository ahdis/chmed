Instance: chmed20af-card-medicationstatement-tt-4-spiricort
InstanceOf: MedicationStatementCard
Title: "MedicationStatement (Card)"
Description: "Example for a MedicationStatement"
Usage: #example
* contained = Inline-Instance-for-chmed20af-card-medicationstatement-tt-4-spiricort-1
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:87799ce6-33f1-48db-ac1b-bdc7c8c6fe90"
* status = #completed
* medicationReference.reference = "#cont1"
* subject.reference = "Patient/chmed20af-card-patient-s01"
* informationSource.reference = "Practitioner/chmed20af-practitioner-s01"
* reasonCode.text = "Blutverdünnung"
* dosage[0].text = "ausschleichend"
* dosage[+].sequence = 0
* dosage[=].timing.repeat.boundsPeriod.start = "2017-09-05"
* dosage[=].timing.repeat.boundsPeriod.end = "2017-09-06"
* dosage[=].timing.repeat.duration = 1
* dosage[=].timing.repeat.durationUnit = #d
* dosage[=].timing.repeat.frequency = 1
* dosage[=].route = urn:oid:0.4.0.127.0.16.1.1.2.1#20053000 "Oral use"
* dosage[=].doseAndRate.doseQuantity = 40 'mg' "milligram"
* dosage[+].sequence = 1
* dosage[=].timing.repeat.boundsPeriod.start = "2017-09-07"
* dosage[=].timing.repeat.boundsPeriod.end = "2017-09-15"
* dosage[=].timing.repeat.duration = 1
* dosage[=].timing.repeat.durationUnit = #d
* dosage[=].timing.repeat.frequency = 1
* dosage[=].route = urn:oid:0.4.0.127.0.16.1.1.2.1#20053000 "Oral use"
* dosage[=].doseAndRate.doseQuantity = 30 'mg' "milligram"
* dosage[+].sequence = 3
* dosage[=].timing.repeat.boundsPeriod.start = "2017-09-16"
* dosage[=].timing.repeat.boundsPeriod.end = "2017-09-21"
* dosage[=].timing.repeat.duration = 1
* dosage[=].timing.repeat.durationUnit = #d
* dosage[=].timing.repeat.frequency = 1
* dosage[=].route = urn:oid:0.4.0.127.0.16.1.1.2.1#20053000 "Oral use"
* dosage[=].doseAndRate.doseQuantity = 25 'mg' "milligram"