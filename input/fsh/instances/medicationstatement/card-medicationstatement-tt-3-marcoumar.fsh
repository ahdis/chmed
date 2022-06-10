Instance: card-medicationstatement-tt-3-marcoumar
InstanceOf: CHMEDMedicationStatementCard
Title: "MedicationStatement - MARCOUMAR"
Description: "Example for a MedicationStatement (Card)"
Usage: #example
* contained = tt-3-marcoumar
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:77c95388-3a79-49b6-97a9-b140f9fa7c37"
* status = #completed
* medicationReference.reference = "#tt-3-marcoumar"
* subject.reference = "Patient/card-patient-s01"
* informationSource.reference = "Practitioner/practitioner-s01"
* reasonCode.text = "Blutverdünnung"
* note.text = "Marcumar-Therapie"
* dosage[structurednormal].timing.repeat.boundsPeriod.start = "2017-09-05"
* dosage[structurednormal].timing.repeat.boundsPeriod.end = "2017-09-05"
* dosage[structurednormal].timing.repeat.count = 1
* dosage[structurednormal].timing.repeat.duration = 1
* dosage[structurednormal].timing.repeat.durationUnit = #d
* dosage[structurednormal].timing.repeat.timeOfDay = "08:00:00"
* dosage[structurednormal].route = urn:oid:0.4.0.127.0.16.1.1.2.1#20053000 "Oral use"
* dosage[structurednormal].doseAndRate.doseQuantity = 3 'mg' "milligram"