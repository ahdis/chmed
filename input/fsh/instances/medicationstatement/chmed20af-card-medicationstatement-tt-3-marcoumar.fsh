Instance: chmed20af-card-medicationstatement-tt-3-marcoumar
InstanceOf: MedicationStatementCard
Title: "MedicationStatement (Card)"
Description: "Example for a MedicationStatement"
Usage: #example
* contained = Inline-Instance-for-chmed20af-card-medicationstatement-tt-3-marcoumar-1
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:77c95388-3a79-49b6-97a9-b140f9fa7c37"
* status = #completed
* medicationReference.reference = "#cont1"
* subject.reference = "Patient/chmed20af-card-patient-s01"
* informationSource.reference = "Practitioner/chmed20af-practitioner-s01"
* reasonCode.text = "Blutverdünnung"
* dosage[0].text = "Marcumar-Therapie"
* dosage[+].timing.repeat.boundsPeriod.start = "2017-09-05"
* dosage[=].timing.repeat.boundsPeriod.end = "2017-09-05"
* dosage[=].timing.repeat.count = 1
* dosage[=].timing.repeat.duration = 1
* dosage[=].timing.repeat.durationUnit = #d
* dosage[=].timing.repeat.timeOfDay = "08:00:00"
* dosage[=].route = urn:oid:0.4.0.127.0.16.1.1.2.1#20053000 "Oral use"
* dosage[=].doseAndRate.doseQuantity = 3 'mg' "milligram"