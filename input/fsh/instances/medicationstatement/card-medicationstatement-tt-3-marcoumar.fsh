Instance: card-medicationstatement-tt-3-marcoumar
InstanceOf: CHMEDMedicationStatementCard
Title: "MedicationStatement - MARCOUMAR"
Description: "Example of a MedicationStatement"
Usage: #example
* contained = tt-3-marcoumar
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:77c95388-3a79-49b6-97a9-b140f9fa7c37"
* status = #completed
* medicationReference.reference = "#tt-3-marcoumar"
* subject.reference = "Patient/card-patient-s01"
* informationSource.reference = "PractitionerRole/practitionerrole-s01"
* reasonCode.text = "Blutverdünnung"
* note.text = "Marcumar-Therapie"
* dosage[baseEntry].timing.repeat.boundsPeriod.start = "2017-09-05"
* dosage[baseEntry].timing.repeat.boundsPeriod.end = "2017-09-05"
* dosage[baseEntry].timing.repeat.count = 1
* dosage[baseEntry].timing.repeat.duration = 1
* dosage[baseEntry].timing.repeat.durationUnit = #d
* dosage[baseEntry].timing.repeat.timeOfDay = "08:00:00"
* dosage[baseEntry].route = urn:oid:0.4.0.127.0.16.1.1.2.1#20053000 "Oral use"
* dosage[baseEntry].doseAndRate.doseQuantity = 3 'mg' "milligram"